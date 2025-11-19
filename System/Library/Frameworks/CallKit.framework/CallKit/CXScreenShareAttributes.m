@interface CXScreenShareAttributes
- (CXScreenShareAttributes)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXScreenShareAttributes

- (id)customDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXScreenShareAttributes *)self frameRate];
  [v3 appendFormat:@" frameRate=%@", v4];

  v5 = [(CXScreenShareAttributes *)self displayID];
  [v3 appendFormat:@" displayID=%@", v5];

  [v3 appendFormat:@" windowed=%d", -[CXScreenShareAttributes isWindowed](self, "isWindowed")];
  v6 = [(CXScreenShareAttributes *)self windowUUID];
  [v3 appendFormat:@" windowUUID=a%@", v6];

  [v3 appendFormat:@" deviceFamily=%ld", -[CXScreenShareAttributes deviceFamily](self, "deviceFamily")];
  [v3 appendFormat:@" deviceHomeButtonType=%ld", -[CXScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")];
  [v3 appendFormat:@" style=%ld", -[CXScreenShareAttributes style](self, "style")];
  v7 = [(CXScreenShareAttributes *)self displayScale];
  [v3 appendFormat:@" displayScale=%@", v7];

  v8 = [(CXScreenShareAttributes *)self cornerRadius];
  [v3 appendFormat:@" cornerRadius=%@", v8];

  v9 = [(CXScreenShareAttributes *)self scaleFactor];
  [v3 appendFormat:@" scaleFactor=%@", v9];

  v10 = [(CXScreenShareAttributes *)self originalResolution];
  [v3 appendFormat:@" originalResolution=%@", v10];

  v11 = [(CXScreenShareAttributes *)self systemRootLayerScale];
  [v3 appendFormat:@" systemRootLayerScale=%@", v11];

  v12 = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  [v3 appendFormat:@" systemRootLayerTransform=%@", v12];

  [v3 appendString:@">"];
  v13 = [v3 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CXScreenShareAttributes *)self displayID];
  [v4 setDisplayID:v5];

  v6 = [(CXScreenShareAttributes *)self frameRate];
  [v4 setFrameRate:v6];

  [v4 setWindowed:{-[CXScreenShareAttributes isWindowed](self, "isWindowed")}];
  v7 = [(CXScreenShareAttributes *)self windowUUID];
  [v4 setWindowUUID:v7];

  [v4 setDeviceFamily:{-[CXScreenShareAttributes deviceFamily](self, "deviceFamily")}];
  [v4 setDeviceHomeButtonType:{-[CXScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")}];
  [v4 setStyle:{-[CXScreenShareAttributes style](self, "style")}];
  v8 = [(CXScreenShareAttributes *)self displayScale];
  [v4 setDisplayScale:v8];

  v9 = [(CXScreenShareAttributes *)self cornerRadius];
  [v4 setCornerRadius:v9];

  v10 = [(CXScreenShareAttributes *)self scaleFactor];
  [v4 setScaleFactor:v10];

  v11 = [(CXScreenShareAttributes *)self originalResolution];
  [v4 setOriginalResolution:v11];

  v12 = [(CXScreenShareAttributes *)self systemRootLayerScale];
  [v4 setSystemRootLayerScale:v12];

  v13 = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  [v4 setSystemRootLayerTransform:v13];

  return v4;
}

- (CXScreenShareAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXScreenShareAttributes *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_frameRate);
    v7 = [v4 decodeObjectForKey:v6];
    frameRate = v5->_frameRate;
    v5->_frameRate = v7;

    v9 = NSStringFromSelector(sel_displayID);
    v10 = [v4 decodeObjectForKey:v9];
    displayID = v5->_displayID;
    v5->_displayID = v10;

    v12 = NSStringFromSelector(sel_isWindowed);
    v5->_windowed = [v4 decodeBoolForKey:v12];

    v13 = NSStringFromSelector(sel_windowUUID);
    v14 = [v4 decodeObjectForKey:v13];
    windowUUID = v5->_windowUUID;
    v5->_windowUUID = v14;

    v16 = NSStringFromSelector(sel_deviceFamily);
    v5->_deviceFamily = [v4 decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_deviceHomeButtonType);
    v5->_deviceHomeButtonType = [v4 decodeIntegerForKey:v17];

    v18 = NSStringFromSelector(sel_style);
    v5->_style = [v4 decodeIntegerForKey:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_displayScale);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    displayScale = v5->_displayScale;
    v5->_displayScale = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_cornerRadius);
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    cornerRadius = v5->_cornerRadius;
    v5->_cornerRadius = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_scaleFactor);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    scaleFactor = v5->_scaleFactor;
    v5->_scaleFactor = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_originalResolution);
    v33 = [v4 decodeObjectOfClass:v31 forKey:v32];
    originalResolution = v5->_originalResolution;
    v5->_originalResolution = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_systemRootLayerScale);
    v37 = [v4 decodeObjectOfClass:v35 forKey:v36];
    systemRootLayerScale = v5->_systemRootLayerScale;
    v5->_systemRootLayerScale = v37;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_systemRootLayerTransform);
    v41 = [v4 decodeObjectOfClass:v39 forKey:v40];
    systemRootLayerTransform = v5->_systemRootLayerTransform;
    v5->_systemRootLayerTransform = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXScreenShareAttributes *)self frameRate];
  v6 = NSStringFromSelector(sel_frameRate);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXScreenShareAttributes *)self displayID];
  v8 = NSStringFromSelector(sel_displayID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXScreenShareAttributes *)self isWindowed];
  v10 = NSStringFromSelector(sel_isWindowed);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(CXScreenShareAttributes *)self windowUUID];
  v12 = NSStringFromSelector(sel_windowUUID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXScreenShareAttributes *)self deviceFamily];
  v14 = NSStringFromSelector(sel_deviceFamily);
  [v4 encodeInteger:v13 forKey:v14];

  v15 = [(CXScreenShareAttributes *)self deviceHomeButtonType];
  v16 = NSStringFromSelector(sel_deviceHomeButtonType);
  [v4 encodeInteger:v15 forKey:v16];

  v17 = [(CXScreenShareAttributes *)self style];
  v18 = NSStringFromSelector(sel_style);
  [v4 encodeInteger:v17 forKey:v18];

  v19 = [(CXScreenShareAttributes *)self displayScale];
  v20 = NSStringFromSelector(sel_displayScale);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(CXScreenShareAttributes *)self cornerRadius];
  v22 = NSStringFromSelector(sel_cornerRadius);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(CXScreenShareAttributes *)self scaleFactor];
  v24 = NSStringFromSelector(sel_scaleFactor);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(CXScreenShareAttributes *)self originalResolution];
  v26 = NSStringFromSelector(sel_originalResolution);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(CXScreenShareAttributes *)self systemRootLayerScale];
  v28 = NSStringFromSelector(sel_systemRootLayerScale);
  [v4 encodeObject:v27 forKey:v28];

  v30 = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  v29 = NSStringFromSelector(sel_systemRootLayerTransform);
  [v4 encodeObject:v30 forKey:v29];
}

@end