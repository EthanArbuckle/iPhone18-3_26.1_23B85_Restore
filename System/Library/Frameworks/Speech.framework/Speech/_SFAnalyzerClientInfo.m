@interface _SFAnalyzerClientInfo
- (_SFAnalyzerClientInfo)initWithCoder:(id)a3;
- (_SFAnalyzerClientInfo)initWithID:(id)a3 source:(id)a4 applicationName:(id)a5 inputOrigin:(id)a6 asrID:(id)a7 requestID:(id)a8 dictationUIInteractionID:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFAnalyzerClientInfo

- (_SFAnalyzerClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFAnalyzerClientInfo;
  v5 = [(_SFAnalyzerClientInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_source"];
    source = v5->_source;
    v5->_source = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_inputOrigin"];
    inputOrigin = v5->_inputOrigin;
    v5->_inputOrigin = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_asrID"];
    asrID = v5->_asrID;
    v5->_asrID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dictationUIInteractionID"];
    dictationUIInteractionID = v5->_dictationUIInteractionID;
    v5->_dictationUIInteractionID = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  [v5 encodeObject:clientID forKey:@"_clientID"];
  [v5 encodeObject:self->_applicationName forKey:@"_applicationName"];
  [v5 encodeObject:self->_source forKey:@"_source"];
  [v5 encodeObject:self->_inputOrigin forKey:@"_inputOrigin"];
  [v5 encodeObject:self->_asrID forKey:@"_asrID"];
  [v5 encodeObject:self->_requestID forKey:@"_requestID"];
  [v5 encodeObject:self->_dictationUIInteractionID forKey:@"_dictationUIInteractionID"];
}

- (_SFAnalyzerClientInfo)initWithID:(id)a3 source:(id)a4 applicationName:(id)a5 inputOrigin:(id)a6 asrID:(id)a7 requestID:(id)a8 dictationUIInteractionID:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = _SFAnalyzerClientInfo;
  v22 = [(_SFAnalyzerClientInfo *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    clientID = v22->_clientID;
    v22->_clientID = v23;

    v25 = [v17 copy];
    applicationName = v22->_applicationName;
    v22->_applicationName = v25;

    v27 = [v16 copy];
    source = v22->_source;
    v22->_source = v27;

    v29 = [v18 copy];
    inputOrigin = v22->_inputOrigin;
    v22->_inputOrigin = v29;

    v31 = [v19 copy];
    asrID = v22->_asrID;
    v22->_asrID = v31;

    v33 = [v20 copy];
    requestID = v22->_requestID;
    v22->_requestID = v33;

    v35 = [v21 copy];
    dictationUIInteractionID = v22->_dictationUIInteractionID;
    v22->_dictationUIInteractionID = v35;
  }

  return v22;
}

@end