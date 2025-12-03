@interface AFSiriIncomingCall
- (AFSiriIncomingCall)init;
- (AFSiriIncomingCall)initWithCallUUID:(id)d callProviderIdentifier:(id)identifier callProviderBundleID:(id)iD callerContactIdentifiers:(id)identifiers handle:(id)handle isVideo:(BOOL)video isCallerIDBlocked:(BOOL)blocked;
- (AFSiriIncomingCall)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSiriIncomingCall

- (AFSiriIncomingCall)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callProviderIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callProviderBundleID"];
  v8 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"callerContactIdentifiers"];

  TUHandleClass = getTUHandleClass();
  if (TUHandleClass)
  {
    v13 = [coderCopy decodeObjectOfClass:TUHandleClass forKey:@"handle"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [coderCopy decodeBoolForKey:@"isVideo"];
  LOBYTE(v18) = [coderCopy decodeBoolForKey:@"isCallerIDBlocked"];
  v15 = [(AFSiriIncomingCall *)self initWithCallUUID:v5 callProviderIdentifier:v6 callProviderBundleID:v7 callerContactIdentifiers:v11 handle:v13 isVideo:v14 isCallerIDBlocked:v18, v19[0]];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  callUUID = [(AFSiriIncomingCall *)self callUUID];
  [coderCopy encodeObject:callUUID forKey:@"callUUID"];

  callProviderIdentifier = [(AFSiriIncomingCall *)self callProviderIdentifier];
  [coderCopy encodeObject:callProviderIdentifier forKey:@"callProviderIdentifier"];

  callProviderBundleID = [(AFSiriIncomingCall *)self callProviderBundleID];
  [coderCopy encodeObject:callProviderBundleID forKey:@"callProviderBundleID"];

  callerContactIdentifiers = [(AFSiriIncomingCall *)self callerContactIdentifiers];
  [coderCopy encodeObject:callerContactIdentifiers forKey:@"callerContactIdentifiers"];

  handle = [(AFSiriIncomingCall *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeBool:-[AFSiriIncomingCall isVideo](self forKey:{"isVideo"), @"isVideo"}];
  [coderCopy encodeBool:-[AFSiriIncomingCall isCallerIDBlocked](self forKey:{"isCallerIDBlocked"), @"isCallerIDBlocked"}];
}

- (AFSiriIncomingCall)initWithCallUUID:(id)d callProviderIdentifier:(id)identifier callProviderBundleID:(id)iD callerContactIdentifiers:(id)identifiers handle:(id)handle isVideo:(BOOL)video isCallerIDBlocked:(BOOL)blocked
{
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  identifiersCopy = identifiers;
  handleCopy = handle;
  v30.receiver = self;
  v30.super_class = AFSiriIncomingCall;
  v20 = [(AFSiriIncomingCall *)&v30 init];
  if (v20)
  {
    v21 = [dCopy copy];
    callUUID = v20->_callUUID;
    v20->_callUUID = v21;

    v23 = [identifierCopy copy];
    callProviderIdentifier = v20->_callProviderIdentifier;
    v20->_callProviderIdentifier = v23;

    v25 = [iDCopy copy];
    callProviderBundleID = v20->_callProviderBundleID;
    v20->_callProviderBundleID = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:identifiersCopy copyItems:1];
    callerContactIdentifiers = v20->_callerContactIdentifiers;
    v20->_callerContactIdentifiers = v27;

    objc_storeStrong(&v20->_handle, handle);
    v20->_isVideo = video;
    v20->_isCallerIDBlocked = blocked;
  }

  return v20;
}

- (AFSiriIncomingCall)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init with no parameters is not supported" userInfo:0];
  objc_exception_throw(v2);
}

@end