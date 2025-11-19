@interface AFSiriIncomingCall
- (AFSiriIncomingCall)init;
- (AFSiriIncomingCall)initWithCallUUID:(id)a3 callProviderIdentifier:(id)a4 callProviderBundleID:(id)a5 callerContactIdentifiers:(id)a6 handle:(id)a7 isVideo:(BOOL)a8 isCallerIDBlocked:(BOOL)a9;
- (AFSiriIncomingCall)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriIncomingCall

- (AFSiriIncomingCall)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callProviderIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callProviderBundleID"];
  v8 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"callerContactIdentifiers"];

  TUHandleClass = getTUHandleClass();
  if (TUHandleClass)
  {
    v13 = [v4 decodeObjectOfClass:TUHandleClass forKey:@"handle"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 decodeBoolForKey:@"isVideo"];
  LOBYTE(v18) = [v4 decodeBoolForKey:@"isCallerIDBlocked"];
  v15 = [(AFSiriIncomingCall *)self initWithCallUUID:v5 callProviderIdentifier:v6 callProviderBundleID:v7 callerContactIdentifiers:v11 handle:v13 isVideo:v14 isCallerIDBlocked:v18, v19[0]];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(AFSiriIncomingCall *)self callUUID];
  [v9 encodeObject:v4 forKey:@"callUUID"];

  v5 = [(AFSiriIncomingCall *)self callProviderIdentifier];
  [v9 encodeObject:v5 forKey:@"callProviderIdentifier"];

  v6 = [(AFSiriIncomingCall *)self callProviderBundleID];
  [v9 encodeObject:v6 forKey:@"callProviderBundleID"];

  v7 = [(AFSiriIncomingCall *)self callerContactIdentifiers];
  [v9 encodeObject:v7 forKey:@"callerContactIdentifiers"];

  v8 = [(AFSiriIncomingCall *)self handle];
  [v9 encodeObject:v8 forKey:@"handle"];

  [v9 encodeBool:-[AFSiriIncomingCall isVideo](self forKey:{"isVideo"), @"isVideo"}];
  [v9 encodeBool:-[AFSiriIncomingCall isCallerIDBlocked](self forKey:{"isCallerIDBlocked"), @"isCallerIDBlocked"}];
}

- (AFSiriIncomingCall)initWithCallUUID:(id)a3 callProviderIdentifier:(id)a4 callProviderBundleID:(id)a5 callerContactIdentifiers:(id)a6 handle:(id)a7 isVideo:(BOOL)a8 isCallerIDBlocked:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v30.receiver = self;
  v30.super_class = AFSiriIncomingCall;
  v20 = [(AFSiriIncomingCall *)&v30 init];
  if (v20)
  {
    v21 = [v15 copy];
    callUUID = v20->_callUUID;
    v20->_callUUID = v21;

    v23 = [v16 copy];
    callProviderIdentifier = v20->_callProviderIdentifier;
    v20->_callProviderIdentifier = v23;

    v25 = [v17 copy];
    callProviderBundleID = v20->_callProviderBundleID;
    v20->_callProviderBundleID = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v18 copyItems:1];
    callerContactIdentifiers = v20->_callerContactIdentifiers;
    v20->_callerContactIdentifiers = v27;

    objc_storeStrong(&v20->_handle, a7);
    v20->_isVideo = a8;
    v20->_isCallerIDBlocked = a9;
  }

  return v20;
}

- (AFSiriIncomingCall)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init with no parameters is not supported" userInfo:0];
  objc_exception_throw(v2);
}

@end