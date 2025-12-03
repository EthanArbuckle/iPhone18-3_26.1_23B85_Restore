@interface CKKSExternalTLKShare
+ (id)parseFromJSONDict:(id)dict error:(id *)error;
+ (id)unstringifyPeerID:(id)d;
- (CKKSExternalTLKShare)initWithCoder:(id)coder;
- (CKKSExternalTLKShare)initWithView:(id)view tlkUUID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID wrappedTLK:(id)k signature:(id)signature;
- (id)description;
- (id)jsonDictionary;
- (id)stringifyPeerID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSExternalTLKShare

- (id)jsonDictionary
{
  v17[6] = *MEMORY[0x1E69E9840];
  v16[0] = @"view";
  view = [(CKKSExternalTLKShare *)self view];
  v17[0] = view;
  v16[1] = @"tlkUUID";
  tlkUUID = [(CKKSExternalTLKShare *)self tlkUUID];
  v17[1] = tlkUUID;
  v16[2] = @"receiverPeerID";
  receiverPeerID = [(CKKSExternalTLKShare *)self receiverPeerID];
  v5 = [(CKKSExternalTLKShare *)self stringifyPeerID:receiverPeerID];
  v17[2] = v5;
  v16[3] = @"senderPeerID";
  senderPeerID = [(CKKSExternalTLKShare *)self senderPeerID];
  v7 = [(CKKSExternalTLKShare *)self stringifyPeerID:senderPeerID];
  v17[3] = v7;
  v16[4] = @"wrappedTLK";
  wrappedTLK = [(CKKSExternalTLKShare *)self wrappedTLK];
  v9 = [wrappedTLK base64EncodedStringWithOptions:0];
  v17[4] = v9;
  v16[5] = @"signature";
  signature = [(CKKSExternalTLKShare *)self signature];
  v11 = [signature base64EncodedStringWithOptions:0];
  v17[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  view = [(CKKSExternalTLKShare *)self view];
  [coderCopy encodeObject:view forKey:@"view"];

  tlkUUID = [(CKKSExternalTLKShare *)self tlkUUID];
  [coderCopy encodeObject:tlkUUID forKey:@"tlkUUID"];

  receiverPeerID = [(CKKSExternalTLKShare *)self receiverPeerID];
  [coderCopy encodeObject:receiverPeerID forKey:@"receiverPeerID"];

  senderPeerID = [(CKKSExternalTLKShare *)self senderPeerID];
  [coderCopy encodeObject:senderPeerID forKey:@"senderPeerID"];

  wrappedTLK = [(CKKSExternalTLKShare *)self wrappedTLK];
  [coderCopy encodeObject:wrappedTLK forKey:@"wrappedTLK"];

  signature = [(CKKSExternalTLKShare *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];
}

- (CKKSExternalTLKShare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CKKSExternalTLKShare;
  v5 = [(CKKSExternalTLKShare *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"view"];
    view = v5->_view;
    v5->_view = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tlkUUID"];
    tlkUUID = v5->_tlkUUID;
    v5->_tlkUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverPeerID"];
    receiverPeerID = v5->_receiverPeerID;
    v5->_receiverPeerID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderPeerID"];
    senderPeerID = v5->_senderPeerID;
    v5->_senderPeerID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedTLK"];
    wrappedTLK = v5->_wrappedTLK;
    v5->_wrappedTLK = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  tlkUUID = [(CKKSExternalTLKShare *)self tlkUUID];
  receiverPeerID = [(CKKSExternalTLKShare *)self receiverPeerID];
  v6 = [(CKKSExternalTLKShare *)self stringifyPeerID:receiverPeerID];
  senderPeerID = [(CKKSExternalTLKShare *)self senderPeerID];
  v8 = [(CKKSExternalTLKShare *)self stringifyPeerID:senderPeerID];
  v9 = [v3 stringWithFormat:@"<CKKSExternalTLKShare(%@): recv:%@ send:%@@>", tlkUUID, v6, v8];

  return v9;
}

- (id)stringifyPeerID:(id)d
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [d base64EncodedStringWithOptions:0];
  v5 = [v3 stringWithFormat:@"spid-%@", v4];

  return v5;
}

- (CKKSExternalTLKShare)initWithView:(id)view tlkUUID:(id)d receiverPeerID:(id)iD senderPeerID:(id)peerID wrappedTLK:(id)k signature:(id)signature
{
  viewCopy = view;
  dCopy = d;
  iDCopy = iD;
  peerIDCopy = peerID;
  kCopy = k;
  signatureCopy = signature;
  v24.receiver = self;
  v24.super_class = CKKSExternalTLKShare;
  v18 = [(CKKSExternalTLKShare *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_view, view);
    objc_storeStrong(&v19->_tlkUUID, d);
    objc_storeStrong(&v19->_receiverPeerID, iD);
    objc_storeStrong(&v19->_senderPeerID, peerID);
    objc_storeStrong(&v19->_wrappedTLK, k);
    objc_storeStrong(&v19->_signature, signature);
  }

  return v19;
}

+ (id)parseFromJSONDict:(id)dict error:(id *)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:@"view"];
  v8 = [dictCopy objectForKeyedSubscript:@"tlkUUID"];
  v9 = [dictCopy objectForKeyedSubscript:@"receiverPeerID"];
  v10 = [self unstringifyPeerID:v9];

  v11 = [dictCopy objectForKeyedSubscript:@"senderPeerID"];
  v12 = [self unstringifyPeerID:v11];

  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v14 = [dictCopy objectForKeyedSubscript:@"wrappedTLK"];
  v15 = [v13 initWithBase64EncodedString:v14 options:0];

  v16 = objc_alloc(MEMORY[0x1E695DEF0]);
  v17 = [dictCopy objectForKeyedSubscript:@"signature"];

  v18 = [v16 initWithBase64EncodedString:v17 options:0];
  if (v7 && v8 && v10 && v12 && v15 && v18)
  {
    v19 = [[CKKSExternalTLKShare alloc] initWithView:v7 tlkUUID:v8 receiverPeerID:v10 senderPeerID:v12 wrappedTLK:v15 signature:v18];
    goto LABEL_17;
  }

  array = [MEMORY[0x1E695DF70] array];
  v21 = array;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [array addObject:@"view"];
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
    if (!error)
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
  if (error)
  {
LABEL_15:
    v22 = MEMORY[0x1E696ABC0];
    errorCopy = error;
    v23 = *MEMORY[0x1E696A768];
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = @"missingkeys";
    v30[0] = @"Missing some required field";
    v30[1] = v21;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:{2, errorCopy}];
    *v28 = [v22 errorWithDomain:v23 code:-50 userInfo:v24];
  }

LABEL_16:

  v19 = 0;
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)unstringifyPeerID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"spid-"])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"spid-", "length")}];
  }

  else
  {
    v4 = dCopy;
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