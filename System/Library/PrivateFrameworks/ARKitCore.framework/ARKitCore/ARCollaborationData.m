@interface ARCollaborationData
- (ARCollaborationData)initWithCoder:(id)a3;
- (ARCollaborationData)initWithVIOData:(id)a3 type:(int64_t)a4 sessionID:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARCollaborationData

- (ARCollaborationData)initWithVIOData:(id)a3 type:(int64_t)a4 sessionID:(unint64_t)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = ARCollaborationData;
  v10 = [(ARCollaborationData *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_priority = *MEMORY[0x1E698BCE0] == a4;
    v10->_version = 4;
    v10->_timestamp = CACurrentMediaTime();
    objc_storeStrong(&v11->_vioData, a3);
    v11->_vioDataType = a4;
    v11->_vioSessionID = a5;
    v12 = [MEMORY[0x1E695DFD8] set];
    recipientIdentifiers = v11->_recipientIdentifiers;
    v11->_recipientIdentifiers = v12;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_priority forKey:@"priority"];
  [v6 encodeInteger:self->_version forKey:@"version"];
  [v6 encodeDouble:@"timestamp" forKey:self->_timestamp];
  vioData = self->_vioData;
  if (vioData)
  {
    [v6 encodeObject:vioData forKey:@"vioData"];
  }

  [v6 encodeInteger:self->_vioDataType forKey:@"vioDataType"];
  [v6 encodeInt64:self->_vioSessionID forKey:@"vioSessionID"];
  anchors = self->_anchors;
  if (anchors)
  {
    [v6 encodeObject:anchors forKey:@"anchors"];
  }

  [v6 encodeObject:self->_recipientIdentifiers forKey:@"recipientIdentifiers"];
}

- (ARCollaborationData)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  if (v5 == 4)
  {
    v29.receiver = self;
    v29.super_class = ARCollaborationData;
    v6 = [(ARCollaborationData *)&v29 init];
    if (v6)
    {
      v6->_priority = [v4 decodeIntegerForKey:@"priority"];
      v6->_version = 4;
      [v4 decodeDoubleForKey:@"timestamp"];
      v6->_timestamp = v7;
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vioData"];
      vioData = v6->_vioData;
      v6->_vioData = v8;

      v6->_vioDataType = [v4 decodeIntegerForKey:@"vioDataType"];
      v6->_vioSessionID = [v4 decodeInt64ForKey:@"vioSessionID"];
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"anchors"];
      anchors = v6->_anchors;
      v6->_anchors = v13;

      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"recipientIdentifiers"];
      recipientIdentifiers = v6->_recipientIdentifiers;
      v6->_recipientIdentifiers = v19;
    }

    self = v6;
    v21 = self;
  }

  else
  {
    v22 = v5;
    v23 = ARErrorWithCodeAndUserInfo(304, 0);
    [v4 failWithError:v23];

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
      v33 = self;
      v34 = 2048;
      v35 = v22;
      v36 = 1024;
      v37 = 4;
      _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error decoding collaboration data, unsupported version (%ti), current version %i", buf, 0x26u);
    }

    v21 = 0;
  }

  return v21;
}

@end