@interface CKKSExternalTLKShare
+ (id)parseFromJSONDict:(id)a3 error:(id *)a4;
+ (id)unstringifyPeerID:(id)a3;
- (CKKSExternalTLKShare)initWithCoder:(id)a3;
- (CKKSExternalTLKShare)initWithView:(id)a3 tlkUUID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 wrappedTLK:(id)a7 signature:(id)a8;
- (id)description;
- (id)jsonDictionary;
- (id)stringifyPeerID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSExternalTLKShare

- (id)jsonDictionary
{
  v17[6] = *MEMORY[0x1E69E9840];
  v16[0] = @"view";
  v15 = [(CKKSExternalTLKShare *)self view];
  v17[0] = v15;
  v16[1] = @"tlkUUID";
  v3 = [(CKKSExternalTLKShare *)self tlkUUID];
  v17[1] = v3;
  v16[2] = @"receiverPeerID";
  v4 = [(CKKSExternalTLKShare *)self receiverPeerID];
  v5 = [(CKKSExternalTLKShare *)self stringifyPeerID:v4];
  v17[2] = v5;
  v16[3] = @"senderPeerID";
  v6 = [(CKKSExternalTLKShare *)self senderPeerID];
  v7 = [(CKKSExternalTLKShare *)self stringifyPeerID:v6];
  v17[3] = v7;
  v16[4] = @"wrappedTLK";
  v8 = [(CKKSExternalTLKShare *)self wrappedTLK];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v17[4] = v9;
  v16[5] = @"signature";
  v10 = [(CKKSExternalTLKShare *)self signature];
  v11 = [v10 base64EncodedStringWithOptions:0];
  v17[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSExternalTLKShare *)self view];
  [v4 encodeObject:v5 forKey:@"view"];

  v6 = [(CKKSExternalTLKShare *)self tlkUUID];
  [v4 encodeObject:v6 forKey:@"tlkUUID"];

  v7 = [(CKKSExternalTLKShare *)self receiverPeerID];
  [v4 encodeObject:v7 forKey:@"receiverPeerID"];

  v8 = [(CKKSExternalTLKShare *)self senderPeerID];
  [v4 encodeObject:v8 forKey:@"senderPeerID"];

  v9 = [(CKKSExternalTLKShare *)self wrappedTLK];
  [v4 encodeObject:v9 forKey:@"wrappedTLK"];

  v10 = [(CKKSExternalTLKShare *)self signature];
  [v4 encodeObject:v10 forKey:@"signature"];
}

- (CKKSExternalTLKShare)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKKSExternalTLKShare;
  v5 = [(CKKSExternalTLKShare *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"view"];
    view = v5->_view;
    v5->_view = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tlkUUID"];
    tlkUUID = v5->_tlkUUID;
    v5->_tlkUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverPeerID"];
    receiverPeerID = v5->_receiverPeerID;
    v5->_receiverPeerID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderPeerID"];
    senderPeerID = v5->_senderPeerID;
    v5->_senderPeerID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedTLK"];
    wrappedTLK = v5->_wrappedTLK;
    v5->_wrappedTLK = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSExternalTLKShare *)self tlkUUID];
  v5 = [(CKKSExternalTLKShare *)self receiverPeerID];
  v6 = [(CKKSExternalTLKShare *)self stringifyPeerID:v5];
  v7 = [(CKKSExternalTLKShare *)self senderPeerID];
  v8 = [(CKKSExternalTLKShare *)self stringifyPeerID:v7];
  v9 = [v3 stringWithFormat:@"<CKKSExternalTLKShare(%@): recv:%@ send:%@@>", v4, v6, v8];

  return v9;
}

- (id)stringifyPeerID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 base64EncodedStringWithOptions:0];
  v5 = [v3 stringWithFormat:@"spid-%@", v4];

  return v5;
}

- (CKKSExternalTLKShare)initWithView:(id)a3 tlkUUID:(id)a4 receiverPeerID:(id)a5 senderPeerID:(id)a6 wrappedTLK:(id)a7 signature:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CKKSExternalTLKShare;
  v18 = [(CKKSExternalTLKShare *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_view, a3);
    objc_storeStrong(&v19->_tlkUUID, a4);
    objc_storeStrong(&v19->_receiverPeerID, a5);
    objc_storeStrong(&v19->_senderPeerID, a6);
    objc_storeStrong(&v19->_wrappedTLK, a7);
    objc_storeStrong(&v19->_signature, a8);
  }

  return v19;
}

+ (id)parseFromJSONDict:(id)a3 error:(id *)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"view"];
  v8 = [v6 objectForKeyedSubscript:@"tlkUUID"];
  v9 = [v6 objectForKeyedSubscript:@"receiverPeerID"];
  v10 = [a1 unstringifyPeerID:v9];

  v11 = [v6 objectForKeyedSubscript:@"senderPeerID"];
  v12 = [a1 unstringifyPeerID:v11];

  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v14 = [v6 objectForKeyedSubscript:@"wrappedTLK"];
  v15 = [v13 initWithBase64EncodedString:v14 options:0];

  v16 = objc_alloc(MEMORY[0x1E695DEF0]);
  v17 = [v6 objectForKeyedSubscript:@"signature"];

  v18 = [v16 initWithBase64EncodedString:v17 options:0];
  if (v7 && v8 && v10 && v12 && v15 && v18)
  {
    v19 = [[CKKSExternalTLKShare alloc] initWithView:v7 tlkUUID:v8 receiverPeerID:v10 senderPeerID:v12 wrappedTLK:v15 signature:v18];
    goto LABEL_17;
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = v20;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [v20 addObject:@"view"];
    if (v8)
    {
LABEL_10:
      if (v10)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  [v21 addObject:@"tlkUUID"];
  if (v10)
  {
LABEL_11:
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v21 addObject:@"receiverPeerID"];
  if (v12)
  {
LABEL_12:
    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v21 addObject:@"senderPeerID"];
  if (v15)
  {
LABEL_13:
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_25:
    [v21 addObject:@"signature"];
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_24:
  [v21 addObject:@"wrapppedTLK"];
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (a4)
  {
LABEL_15:
    v22 = MEMORY[0x1E696ABC0];
    v27 = a4;
    v23 = *MEMORY[0x1E696A768];
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = @"missingkeys";
    v30[0] = @"Missing some required field";
    v30[1] = v21;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:{2, v27}];
    *v28 = [v22 errorWithDomain:v23 code:-50 userInfo:v24];
  }

LABEL_16:

  v19 = 0;
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)unstringifyPeerID:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"spid-"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"spid-", "length")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end