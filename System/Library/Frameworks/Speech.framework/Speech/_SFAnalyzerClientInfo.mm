@interface _SFAnalyzerClientInfo
- (_SFAnalyzerClientInfo)initWithCoder:(id)coder;
- (_SFAnalyzerClientInfo)initWithID:(id)d source:(id)source applicationName:(id)name inputOrigin:(id)origin asrID:(id)iD requestID:(id)requestID dictationUIInteractionID:(id)interactionID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFAnalyzerClientInfo

- (_SFAnalyzerClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _SFAnalyzerClientInfo;
  v5 = [(_SFAnalyzerClientInfo *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_source"];
    source = v5->_source;
    v5->_source = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_inputOrigin"];
    inputOrigin = v5->_inputOrigin;
    v5->_inputOrigin = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_asrID"];
    asrID = v5->_asrID;
    v5->_asrID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dictationUIInteractionID"];
    dictationUIInteractionID = v5->_dictationUIInteractionID;
    v5->_dictationUIInteractionID = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  coderCopy = coder;
  [coderCopy encodeObject:clientID forKey:@"_clientID"];
  [coderCopy encodeObject:self->_applicationName forKey:@"_applicationName"];
  [coderCopy encodeObject:self->_source forKey:@"_source"];
  [coderCopy encodeObject:self->_inputOrigin forKey:@"_inputOrigin"];
  [coderCopy encodeObject:self->_asrID forKey:@"_asrID"];
  [coderCopy encodeObject:self->_requestID forKey:@"_requestID"];
  [coderCopy encodeObject:self->_dictationUIInteractionID forKey:@"_dictationUIInteractionID"];
}

- (_SFAnalyzerClientInfo)initWithID:(id)d source:(id)source applicationName:(id)name inputOrigin:(id)origin asrID:(id)iD requestID:(id)requestID dictationUIInteractionID:(id)interactionID
{
  dCopy = d;
  sourceCopy = source;
  nameCopy = name;
  originCopy = origin;
  iDCopy = iD;
  requestIDCopy = requestID;
  interactionIDCopy = interactionID;
  v38.receiver = self;
  v38.super_class = _SFAnalyzerClientInfo;
  v22 = [(_SFAnalyzerClientInfo *)&v38 init];
  if (v22)
  {
    v23 = [dCopy copy];
    clientID = v22->_clientID;
    v22->_clientID = v23;

    v25 = [nameCopy copy];
    applicationName = v22->_applicationName;
    v22->_applicationName = v25;

    v27 = [sourceCopy copy];
    source = v22->_source;
    v22->_source = v27;

    v29 = [originCopy copy];
    inputOrigin = v22->_inputOrigin;
    v22->_inputOrigin = v29;

    v31 = [iDCopy copy];
    asrID = v22->_asrID;
    v22->_asrID = v31;

    v33 = [requestIDCopy copy];
    requestID = v22->_requestID;
    v22->_requestID = v33;

    v35 = [interactionIDCopy copy];
    dictationUIInteractionID = v22->_dictationUIInteractionID;
    v22->_dictationUIInteractionID = v35;
  }

  return v22;
}

@end