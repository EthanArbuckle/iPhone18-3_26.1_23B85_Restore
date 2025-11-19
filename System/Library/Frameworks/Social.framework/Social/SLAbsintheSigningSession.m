@interface SLAbsintheSigningSession
- (BOOL)establish;
- (SLAbsintheSigningSession)initWithCertURL:(id)a3 sessionURL:(id)a4;
- (id)_urlEncodedString:(id)a3;
- (id)signatureForData:(id)a3;
- (void)dealloc;
@end

@implementation SLAbsintheSigningSession

- (SLAbsintheSigningSession)initWithCertURL:(id)a3 sessionURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLAbsintheSigningSession;
  v9 = [(SLAbsintheSigningSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certURL, a3);
    objc_storeStrong(&v10->_sessionURL, a4);
  }

  return v10;
}

- (void)dealloc
{
  IW1PcFszqNK(self->_context);
  v3.receiver = self;
  v3.super_class = SLAbsintheSigningSession;
  [(SLAbsintheSigningSession *)&v3 dealloc];
}

- (BOOL)establish
{
  v63[1] = *MEMORY[0x1E69E9840];
  _SLLog(v2, 7, @"Fetching Absinthe cert.");
  v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_certURL];
  v5 = [MEMORY[0x1E696AF68] requestWithURL:v4];
  v55 = 0;
  v56 = 0;
  v6 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v5 returningResponse:&v56 error:&v55];
  v7 = v56;
  v8 = v55;
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = v8;
    v36 = [v8 localizedDescription];
    _SLLog(v2, 3, @"Could not get Absinthe cert: %@");

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v37 = [v6 length];
  _SLLog(v2, 7, @"Got Absinthe cert: %d bytes.");
  v54 = 0;
  v53 = 0;
  _SLLog(v2, 7, @"Initializing Absinthe session.");
  KxmB0CKvgWt([v6 bytes], objc_msgSend(v6, "length"));
  if (v11)
  {
    _SLLog(v2, 3, @"NACInit failed, status: %d");
    v10 = 0;
    goto LABEL_8;
  }

  _SLLog(v2, 7, @"session info request: %p of size %lu");
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v54 length:{v53, v54, v53}];
  v15 = [v14 base64Encoding];

  v62 = @"absinthe-operations";
  v60 = @"create-session-info";
  v57[0] = @"id";
  v57[1] = @"request";
  v58[0] = &unk_1F4202A78;
  v58[1] = v15;
  v48 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v59 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v61 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v63[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];

  v52 = 0;
  v47 = v19;
  v20 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v19 options:0 error:&v52];
  v21 = v52;
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:4];
  v23 = [(SLAbsintheSigningSession *)self _urlEncodedString:v22];

  if (v21)
  {
    _SLLog(v2, 3, @"Building Absinthe operation JSON failed: %@");
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v44 = v20;
    v24 = MEMORY[0x1E696AD68];
    v25 = [MEMORY[0x1E695DFF8] URLWithString:self->_sessionURL];
    v26 = [v24 requestWithURL:v25];

    [v26 setHTTPMethod:@"POST"];
    v46 = v23;
    v27 = [v23 dataUsingEncoding:4];
    [v26 setHTTPBody:v27];

    [v26 addValue:@"Absinthe/2.0 Thunderhill (com.apple.social.facebook)" forHTTPHeaderField:@"User-Agent"];
    v50 = 0;
    v51 = v7;
    v45 = v26;
    v28 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v26 returningResponse:&v51 error:&v50];
    v43 = v51;

    v29 = v50;
    v10 = v29;
    v42 = v28;
    if (v29 || !v28)
    {
      v30 = [v29 localizedDescription];
      _SLLog(v2, 3, @"Could not connect to session URL: %@");
      v21 = 0;
      v12 = 0;
      v20 = v44;
    }

    else
    {
      v49 = 0;
      v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v28 options:0 error:&v49];
      v31 = v49;
      v21 = v31;
      v20 = v44;
      if (v31)
      {
        v32 = [v31 localizedDescription];
        _SLLog(v2, 3, @"JSON parsing failed: %@");
        v12 = 0;
      }

      else
      {
        v41 = v30;
        v39 = [v30 objectForKey:@"absinthe-results"];
        v38 = [v39 objectForKey:@"create-session-info"];
        v33 = [v38 lastObject];
        v32 = [v33 objectForKey:@"session-info"];

        if (v32)
        {
          v40 = v32;
          v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64Encoding:v32];
          _SLLog(v2, 7, @"Initialized Absinthe session. Establishing key...");
          nDYmeMqvWb(self->_context, [v34 bytes], objc_msgSend(v34, "length"));
          v12 = v35 == 0;
          if (v35)
          {
            _SLLog(v2, 3, @"NACKeyEstablishment failed, status: %d");
          }

          v32 = v40;
          v30 = v41;
        }

        else
        {
          _SLLog(v2, 3, @"Could not get session info from server response.");
          v12 = 0;
          v30 = v41;
        }
      }

      v23 = v46;
    }

    v7 = v43;
  }

LABEL_9:
  return v12;
}

- (id)signatureForData:(id)a3
{
  if (self->_context)
  {
    v11 = 0;
    v5 = a3;
    _SLLog(v3, 7, @"Signing data.");
    context = self->_context;
    v7 = [v5 bytes];
    v8 = [v5 length];

    t1BoNctgaUu66(context, v7, v8, &v11);
    if (v9)
    {
      _SLLog(v3, 3, @"NACSign failed, status: %d");
    }
  }

  return 0;
}

- (id)_urlEncodedString:(id)a3
{
  v3 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], a3, 0, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;='", 0x8000100u);

  return v3;
}

@end