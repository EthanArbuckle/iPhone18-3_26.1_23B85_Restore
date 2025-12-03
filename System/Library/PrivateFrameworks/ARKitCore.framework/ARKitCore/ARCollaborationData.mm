@interface ARCollaborationData
- (ARCollaborationData)initWithCoder:(id)coder;
- (ARCollaborationData)initWithVIOData:(id)data type:(int64_t)type sessionID:(unint64_t)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARCollaborationData

- (ARCollaborationData)initWithVIOData:(id)data type:(int64_t)type sessionID:(unint64_t)d
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = ARCollaborationData;
  v10 = [(ARCollaborationData *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_priority = *MEMORY[0x1E698BCE0] == type;
    v10->_version = 4;
    v10->_timestamp = CACurrentMediaTime();
    objc_storeStrong(&v11->_vioData, data);
    v11->_vioDataType = type;
    v11->_vioSessionID = d;
    v12 = [MEMORY[0x1E695DFD8] set];
    recipientIdentifiers = v11->_recipientIdentifiers;
    v11->_recipientIdentifiers = v12;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  vioData = self->_vioData;
  if (vioData)
  {
    [coderCopy encodeObject:vioData forKey:@"vioData"];
  }

  [coderCopy encodeInteger:self->_vioDataType forKey:@"vioDataType"];
  [coderCopy encodeInt64:self->_vioSessionID forKey:@"vioSessionID"];
  anchors = self->_anchors;
  if (anchors)
  {
    [coderCopy encodeObject:anchors forKey:@"anchors"];
  }

  [coderCopy encodeObject:self->_recipientIdentifiers forKey:@"recipientIdentifiers"];
}

- (ARCollaborationData)initWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  if (v5 == 4)
  {
    v29.receiver = self;
    v29.super_class = ARCollaborationData;
    v6 = [(ARCollaborationData *)&v29 init];
    if (v6)
    {
      v6->_priority = [coderCopy decodeIntegerForKey:@"priority"];
      v6->_version = 4;
      [coderCopy decodeDoubleForKey:@"timestamp"];
      v6->_timestamp = v7;
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vioData"];
      vioData = v6->_vioData;
      v6->_vioData = v8;

      v6->_vioDataType = [coderCopy decodeIntegerForKey:@"vioDataType"];
      v6->_vioSessionID = [coderCopy decodeInt64ForKey:@"vioSessionID"];
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"anchors"];
      anchors = v6->_anchors;
      v6->_anchors = v13;

      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"recipientIdentifiers"];
      recipientIdentifiers = v6->_recipientIdentifiers;
      v6->_recipientIdentifiers = v19;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v22 = v5;
    v23 = ARErrorWithCodeAndUserInfo(304, 0);
    [coderCopy failWithError:v23];

    if (_ARLogGeneral_onceToken_25 != -1)
    {
      [ARCollaborationData initWithCoder:];
    }

    v24 = _ARLogGeneral_logObj_25;
    if (os_log_type_enabled(_ARLogGeneral_logObj_25, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544130;
      v31 = v27;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2048;
      v35 = v22;
      v36 = 1024;
      v37 = 4;
      _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error decoding collaboration data, unsupported version (%ti), current version %i", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end