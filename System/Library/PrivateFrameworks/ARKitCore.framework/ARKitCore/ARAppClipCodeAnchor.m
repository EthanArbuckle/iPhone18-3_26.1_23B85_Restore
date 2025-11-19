@interface ARAppClipCodeAnchor
- (ARAppClipCodeAnchor)initWithAnchor:(id)a3;
- (ARAppClipCodeAnchor)initWithAppClipCodeResult:(id)a3 instanceID:(id)a4;
- (ARAppClipCodeAnchor)initWithCoder:(id)a3;
- (ARAppClipCodeURLDecodingState)urlDecodingState;
- (NSString)description;
- (id)copyWithAppClipCodeResult:(id)a3 isTracked:(BOOL)a4;
- (id)copyWithTrackedState:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARAppClipCodeAnchor

- (ARAppClipCodeAnchor)initWithAppClipCodeResult:(id)a3 instanceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ARAppClipCodeAnchor;
  v8 = [(ARAnchor *)&v14 initWithTransform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  if (v8)
  {
    v9 = [v6 url];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_instanceID, a4);
    [v6 size];
    *&v11 = v11 * 0.5;
    v8->_radius = *&v11;
    [v6 confidence];
    v8->_confidence = v12;
    v8->_urlDecodingStateInternal = [v6 urlDecodingStateInternal];
    [(ARAppClipCodeAnchor *)v8 setIsTracked:1];
    v8->_isScaleReliable = [v6 isScaleReliable];
    v8->_urlEncodingVersion = [v6 urlEncodingVersion];
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ARAppClipCodeAnchor *)self instanceID];
  v7 = [(ARAppClipCodeAnchor *)self url];
  v8 = [v7 absoluteString];
  v9 = [(ARAnchor *)self identifier];
  [(ARAnchor *)self transform];
  v14 = ARMatrix4x4Description(0, v10, v11, v12, v13);
  v15 = [v3 stringWithFormat:@"<%@: %p instanceID=%@ url=%@ identifier=%@ transform=%@>", v5, self, v6, v8, v9, v14];

  return v15;
}

- (id)copyWithTrackedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(ARAppClipCodeAnchor *)self copy];
  v5 = v4;
  if (v4 && [v4 isTracked] != v3)
  {
    [v5 setIsTracked:v3];
  }

  return v5;
}

- (ARAppClipCodeAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeAnchor;
  v5 = [(ARAnchor *)&v13 initWithAnchor:v4];
  if (v5)
  {
    v6 = [v4 url];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 instanceID];
    instanceID = v5->_instanceID;
    v5->_instanceID = v8;

    [v4 radius];
    v5->_radius = v10;
    [v4 confidence];
    v5->_confidence = v11;
    v5->_urlDecodingStateInternal = [v4 urlDecodingStateInternal];
    v5->_isTracked = [v4 isTracked];
    v5->_isScaleReliable = [v4 isScaleReliable];
    v5->_urlEncodingVersion = [v4 urlEncodingVersion];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ARAppClipCodeAnchor;
  v4 = a3;
  [(ARAnchor *)&v7 encodeWithCoder:v4];
  v5 = [(ARAppClipCodeAnchor *)self url:v7.receiver];
  [v4 encodeObject:v5 forKey:@"url"];

  v6 = [(ARAppClipCodeAnchor *)self instanceID];
  [v4 encodeObject:v6 forKey:@"instanceID"];

  [(ARAppClipCodeAnchor *)self confidence];
  [v4 encodeFloat:@"confidence" forKey:?];
  [(ARAppClipCodeAnchor *)self radius];
  [v4 encodeFloat:@"radius" forKey:?];
  [v4 encodeInteger:-[ARAppClipCodeAnchor urlDecodingStateInternal](self forKey:{"urlDecodingStateInternal"), @"urlDecodingStateInternal"}];
  [v4 encodeBool:-[ARAppClipCodeAnchor isTracked](self forKey:{"isTracked"), @"isTracked"}];
  [v4 encodeBool:-[ARAppClipCodeAnchor isScaleReliable](self forKey:{"isScaleReliable"), @"isScaleReliable"}];
  [v4 encodeInteger:-[ARAppClipCodeAnchor urlEncodingVersion](self forKey:{"urlEncodingVersion"), @"urlEncodingVersion"}];
}

- (ARAppClipCodeAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeAnchor;
  v5 = [(ARAnchor *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceID"];
    instanceID = v5->_instanceID;
    v5->_instanceID = v8;

    [v4 decodeFloatForKey:@"confidence"];
    v5->_confidence = v10;
    [v4 decodeFloatForKey:@"radius"];
    v5->_radius = v11;
    v5->_urlDecodingStateInternal = [v4 decodeIntegerForKey:@"urlDecodingStateInternal"];
    v5->_isTracked = [v4 decodeBoolForKey:@"isTracked"];
    v5->_isScaleReliable = [v4 decodeBoolForKey:@"isScaleReliable"];
    v5->_urlEncodingVersion = [v4 decodeIntegerForKey:@"urlEncodingVersion"];
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

- (id)copyWithAppClipCodeResult:(id)a3 isTracked:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ARAppClipCodeAnchor *)self copy];
  if (v7)
  {
    [v6 size];
    v9 = v8 * 0.5;
    *&v9 = v9;
    [v7 setRadius:v9];
    [v6 confidence];
    [v7 setConfidence:?];
    v10 = [v6 url];
    [v7 setUrl:v10];

    [v7 setUrlDecodingStateInternal:{objc_msgSend(v6, "urlDecodingStateInternal")}];
    [v7 setIsScaleReliable:{objc_msgSend(v6, "isScaleReliable")}];
    [v7 setUrlEncodingVersion:{objc_msgSend(v6, "urlEncodingVersion")}];
    [v7 setIsTracked:v4];
  }

  return v7;
}

@end