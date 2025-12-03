@interface MusicTermsSendByEmailOperation
- (MusicTermsSendByEmailOperation)initWithEmailAddress:(id)address;
- (id)error;
- (void)main;
@end

@implementation MusicTermsSendByEmailOperation

- (MusicTermsSendByEmailOperation)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [(MusicTermsSendByEmailOperation *)self init];
  if (v5)
  {
    v6 = [addressCopy copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;
  }

  return v5;
}

- (void)main
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if ([(MusicTermsSendByEmailOperation *)self isCancelled])
  {
    v3 = SSError();
    uRLBagDictionary = v15[5];
    v15[5] = v3;
LABEL_11:

    goto LABEL_12;
  }

  if ([(NSString *)self->_emailAddress length])
  {
    uRLBagDictionary = [(MusicTermsSendByEmailOperation *)self URLBagDictionary];
    v5 = [uRLBagDictionary objectForKey:@"email-terms"];
    if (_NSIsNSString())
    {
      if (v5)
      {
        v6 = [NSURL URLWithString:v5];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 URLByAppendingQueryParameter:@"e" value:self->_emailAddress];
          v9 = [[NSMutableURLRequest alloc] initWithURL:v8];
          [v9 setHTTPMethod:@"GET"];
          v10 = [(MusicTermsSendByEmailOperation *)self newLoadURLOperationWithRequest:v9];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = __38__MusicTermsSendByEmailOperation_main__block_invoke;
          v13[3] = &unk_CEF238;
          v13[4] = &v14;
          [v10 setOutputBlock:v13];
          [(MusicTermsSendByEmailOperation *)self runChildOperation:v10];

LABEL_10:
          goto LABEL_11;
        }
      }
    }

    else
    {

      v5 = 0;
    }

    v11 = SSError();
    v7 = v15[5];
    v15[5] = v11;
    goto LABEL_10;
  }

LABEL_12:
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __38__MusicTermsSendByEmailOperation_main__block_invoke_2;
  v12[3] = &unk_CEF260;
  v12[4] = self;
  v12[5] = &v14;
  [(MusicTermsSendByEmailOperation *)self dispatchAsync:v12];
  _Block_object_dispose(&v14, 8);
}

- (id)error
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __39__MusicTermsSendByEmailOperation_error__block_invoke;
  v4[3] = &unk_CEF288;
  v4[4] = self;
  v4[5] = &v5;
  [(MusicTermsSendByEmailOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end