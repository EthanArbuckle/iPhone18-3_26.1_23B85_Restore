@interface MPServerObjectDatabaseHLSAsset
- (MPServerObjectDatabaseHLSAsset)initWithSQLRowResult:(id)result;
- (id)_initWithIdentifier:(id)identifier hashedPersonID:(id)d playlistURL:(id)l keyCertificateURL:(id)rL keyServerURL:(id)uRL keyServerAdamID:(id)iD keyServerProtocolType:(id)type isiTunesStoreStream:(BOOL)self0;
@end

@implementation MPServerObjectDatabaseHLSAsset

- (MPServerObjectDatabaseHLSAsset)initWithSQLRowResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy stringValueAtColumnIndex:0];
  v6 = [resultCopy stringValueAtColumnIndex:1];
  v7 = MEMORY[0x1E695DFF8];
  v8 = [resultCopy stringValueAtColumnIndex:2];
  v9 = [v7 URLWithString:v8];

  v10 = [resultCopy stringValueAtColumnIndex:3];
  if ([v10 length])
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [resultCopy stringValueAtColumnIndex:4];

  if ([v12 length])
  {
    v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [resultCopy int64ValueAtColumnIndex:5];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [resultCopy stringValueAtColumnIndex:6];
  LOBYTE(v19) = [resultCopy BOOLValueAtColumnIndex:7];
  v17 = [(MPServerObjectDatabaseHLSAsset *)self _initWithIdentifier:v5 hashedPersonID:v6 playlistURL:v9 keyCertificateURL:v11 keyServerURL:v13 keyServerAdamID:v15 keyServerProtocolType:v16 isiTunesStoreStream:v19];

  return v17;
}

- (id)_initWithIdentifier:(id)identifier hashedPersonID:(id)d playlistURL:(id)l keyCertificateURL:(id)rL keyServerURL:(id)uRL keyServerAdamID:(id)iD keyServerProtocolType:(id)type isiTunesStoreStream:(BOOL)self0
{
  identifierCopy = identifier;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  iDCopy = iD;
  typeCopy = type;
  v29.receiver = self;
  v29.super_class = MPServerObjectDatabaseHLSAsset;
  v20 = [(MPServerObjectDatabaseHLSAsset *)&v29 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [dCopy copy];
    hashedPersonID = v20->_hashedPersonID;
    v20->_hashedPersonID = v23;

    objc_storeStrong(&v20->_playlistURL, l);
    objc_storeStrong(&v20->_keyCertificateURL, rL);
    objc_storeStrong(&v20->_keyServerURL, uRL);
    objc_storeStrong(&v20->_keyServerAdamID, iD);
    objc_storeStrong(&v20->_keyServerProtocolType, type);
    v20->_iTunesStoreStream = stream;
  }

  return v20;
}

@end