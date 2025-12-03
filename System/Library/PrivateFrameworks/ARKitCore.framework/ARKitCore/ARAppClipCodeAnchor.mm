@interface ARAppClipCodeAnchor
- (ARAppClipCodeAnchor)initWithAnchor:(id)anchor;
- (ARAppClipCodeAnchor)initWithAppClipCodeResult:(id)result instanceID:(id)d;
- (ARAppClipCodeAnchor)initWithCoder:(id)coder;
- (ARAppClipCodeURLDecodingState)urlDecodingState;
- (NSString)description;
- (id)copyWithAppClipCodeResult:(id)result isTracked:(BOOL)tracked;
- (id)copyWithTrackedState:(BOOL)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARAppClipCodeAnchor

- (ARAppClipCodeAnchor)initWithAppClipCodeResult:(id)result instanceID:(id)d
{
  resultCopy = result;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ARAppClipCodeAnchor;
  v8 = [(ARAnchor *)&v14 initWithTransform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  if (v8)
  {
    v9 = [resultCopy url];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_instanceID, d);
    [resultCopy size];
    *&v11 = v11 * 0.5;
    v8->_radius = *&v11;
    [resultCopy confidence];
    v8->_confidence = v12;
    v8->_urlDecodingStateInternal = [resultCopy urlDecodingStateInternal];
    [(ARAppClipCodeAnchor *)v8 setIsTracked:1];
    v8->_isScaleReliable = [resultCopy isScaleReliable];
    v8->_urlEncodingVersion = [resultCopy urlEncodingVersion];
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  instanceID = [(ARAppClipCodeAnchor *)self instanceID];
  v7 = [(ARAppClipCodeAnchor *)self url];
  absoluteString = [v7 absoluteString];
  identifier = [(ARAnchor *)self identifier];
  [(ARAnchor *)self transform];
  v14 = ARMatrix4x4Description(0, v10, v11, v12, v13);
  v15 = [v3 stringWithFormat:@"<%@: %p instanceID=%@ url=%@ identifier=%@ transform=%@>", v5, self, instanceID, absoluteString, identifier, v14];

  return v15;
}

- (id)copyWithTrackedState:(BOOL)state
{
  stateCopy = state;
  v4 = [(ARAppClipCodeAnchor *)self copy];
  v5 = v4;
  if (v4 && [v4 isTracked] != stateCopy)
  {
    [v5 setIsTracked:stateCopy];
  }

  return v5;
}

- (ARAppClipCodeAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeAnchor;
  v5 = [(ARAnchor *)&v13 initWithAnchor:anchorCopy];
  if (v5)
  {
    v6 = [anchorCopy url];
    url = v5->_url;
    v5->_url = v6;

    instanceID = [anchorCopy instanceID];
    instanceID = v5->_instanceID;
    v5->_instanceID = instanceID;

    [anchorCopy radius];
    v5->_radius = v10;
    [anchorCopy confidence];
    v5->_confidence = v11;
    v5->_urlDecodingStateInternal = [anchorCopy urlDecodingStateInternal];
    v5->_isTracked = [anchorCopy isTracked];
    v5->_isScaleReliable = [anchorCopy isScaleReliable];
    v5->_urlEncodingVersion = [anchorCopy urlEncodingVersion];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ARAppClipCodeAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ARAppClipCodeAnchor *)self url:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"url"];

  instanceID = [(ARAppClipCodeAnchor *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"instanceID"];

  [(ARAppClipCodeAnchor *)self confidence];
  [coderCopy encodeFloat:@"confidence" forKey:?];
  [(ARAppClipCodeAnchor *)self radius];
  [coderCopy encodeFloat:@"radius" forKey:?];
  [coderCopy encodeInteger:-[ARAppClipCodeAnchor urlDecodingStateInternal](self forKey:{"urlDecodingStateInternal"), @"urlDecodingStateInternal"}];
  [coderCopy encodeBool:-[ARAppClipCodeAnchor isTracked](self forKey:{"isTracked"), @"isTracked"}];
  [coderCopy encodeBool:-[ARAppClipCodeAnchor isScaleReliable](self forKey:{"isScaleReliable"), @"isScaleReliable"}];
  [coderCopy encodeInteger:-[ARAppClipCodeAnchor urlEncodingVersion](self forKey:{"urlEncodingVersion"), @"urlEncodingVersion"}];
}

- (ARAppClipCodeAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeAnchor;
  v5 = [(ARAnchor *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceID"];
    instanceID = v5->_instanceID;
    v5->_instanceID = v8;

    [coderCopy decodeFloatForKey:@"confidence"];
    v5->_confidence = v10;
    [coderCopy decodeFloatForKey:@"radius"];
    v5->_radius = v11;
    v5->_urlDecodingStateInternal = [coderCopy decodeIntegerForKey:@"urlDecodingStateInternal"];
    v5->_isTracked = [coderCopy decodeBoolForKey:@"isTracked"];
    v5->_isScaleReliable = [coderCopy decodeBoolForKey:@"isScaleReliable"];
    v5->_urlEncodingVersion = [coderCopy decodeIntegerForKey:@"urlEncodingVersion"];
  }

  return v5;
}

- (ARAppClipCodeURLDecodingState)urlDecodingState
{
  urlDecodingStateInternal = self->_urlDecodingStateInternal;
  if (urlDecodingStateInternal > 9)
  {
    return 2;
  }

  else
  {
    return qword_1C25C91A8[urlDecodingStateInternal];
  }
}

- (id)copyWithAppClipCodeResult:(id)result isTracked:(BOOL)tracked
{
  trackedCopy = tracked;
  resultCopy = result;
  v7 = [(ARAppClipCodeAnchor *)self copy];
  if (v7)
  {
    [resultCopy size];
    v9 = v8 * 0.5;
    *&v9 = v9;
    [v7 setRadius:v9];
    [resultCopy confidence];
    [v7 setConfidence:?];
    v10 = [resultCopy url];
    [v7 setUrl:v10];

    [v7 setUrlDecodingStateInternal:{objc_msgSend(resultCopy, "urlDecodingStateInternal")}];
    [v7 setIsScaleReliable:{objc_msgSend(resultCopy, "isScaleReliable")}];
    [v7 setUrlEncodingVersion:{objc_msgSend(resultCopy, "urlEncodingVersion")}];
    [v7 setIsTracked:trackedCopy];
  }

  return v7;
}

@end