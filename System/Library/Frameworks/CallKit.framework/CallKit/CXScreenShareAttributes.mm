@interface CXScreenShareAttributes
- (CXScreenShareAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXScreenShareAttributes

- (id)customDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  frameRate = [(CXScreenShareAttributes *)self frameRate];
  [v3 appendFormat:@" frameRate=%@", frameRate];

  displayID = [(CXScreenShareAttributes *)self displayID];
  [v3 appendFormat:@" displayID=%@", displayID];

  [v3 appendFormat:@" windowed=%d", -[CXScreenShareAttributes isWindowed](self, "isWindowed")];
  windowUUID = [(CXScreenShareAttributes *)self windowUUID];
  [v3 appendFormat:@" windowUUID=a%@", windowUUID];

  [v3 appendFormat:@" deviceFamily=%ld", -[CXScreenShareAttributes deviceFamily](self, "deviceFamily")];
  [v3 appendFormat:@" deviceHomeButtonType=%ld", -[CXScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")];
  [v3 appendFormat:@" style=%ld", -[CXScreenShareAttributes style](self, "style")];
  displayScale = [(CXScreenShareAttributes *)self displayScale];
  [v3 appendFormat:@" displayScale=%@", displayScale];

  cornerRadius = [(CXScreenShareAttributes *)self cornerRadius];
  [v3 appendFormat:@" cornerRadius=%@", cornerRadius];

  scaleFactor = [(CXScreenShareAttributes *)self scaleFactor];
  [v3 appendFormat:@" scaleFactor=%@", scaleFactor];

  originalResolution = [(CXScreenShareAttributes *)self originalResolution];
  [v3 appendFormat:@" originalResolution=%@", originalResolution];

  systemRootLayerScale = [(CXScreenShareAttributes *)self systemRootLayerScale];
  [v3 appendFormat:@" systemRootLayerScale=%@", systemRootLayerScale];

  systemRootLayerTransform = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  [v3 appendFormat:@" systemRootLayerTransform=%@", systemRootLayerTransform];

  [v3 appendString:@">"];
  v13 = [v3 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  displayID = [(CXScreenShareAttributes *)self displayID];
  [v4 setDisplayID:displayID];

  frameRate = [(CXScreenShareAttributes *)self frameRate];
  [v4 setFrameRate:frameRate];

  [v4 setWindowed:{-[CXScreenShareAttributes isWindowed](self, "isWindowed")}];
  windowUUID = [(CXScreenShareAttributes *)self windowUUID];
  [v4 setWindowUUID:windowUUID];

  [v4 setDeviceFamily:{-[CXScreenShareAttributes deviceFamily](self, "deviceFamily")}];
  [v4 setDeviceHomeButtonType:{-[CXScreenShareAttributes deviceHomeButtonType](self, "deviceHomeButtonType")}];
  [v4 setStyle:{-[CXScreenShareAttributes style](self, "style")}];
  displayScale = [(CXScreenShareAttributes *)self displayScale];
  [v4 setDisplayScale:displayScale];

  cornerRadius = [(CXScreenShareAttributes *)self cornerRadius];
  [v4 setCornerRadius:cornerRadius];

  scaleFactor = [(CXScreenShareAttributes *)self scaleFactor];
  [v4 setScaleFactor:scaleFactor];

  originalResolution = [(CXScreenShareAttributes *)self originalResolution];
  [v4 setOriginalResolution:originalResolution];

  systemRootLayerScale = [(CXScreenShareAttributes *)self systemRootLayerScale];
  [v4 setSystemRootLayerScale:systemRootLayerScale];

  systemRootLayerTransform = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  [v4 setSystemRootLayerTransform:systemRootLayerTransform];

  return v4;
}

- (CXScreenShareAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXScreenShareAttributes *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_frameRate);
    v7 = [coderCopy decodeObjectForKey:v6];
    frameRate = v5->_frameRate;
    v5->_frameRate = v7;

    v9 = NSStringFromSelector(sel_displayID);
    v10 = [coderCopy decodeObjectForKey:v9];
    displayID = v5->_displayID;
    v5->_displayID = v10;

    v12 = NSStringFromSelector(sel_isWindowed);
    v5->_windowed = [coderCopy decodeBoolForKey:v12];

    v13 = NSStringFromSelector(sel_windowUUID);
    v14 = [coderCopy decodeObjectForKey:v13];
    windowUUID = v5->_windowUUID;
    v5->_windowUUID = v14;

    v16 = NSStringFromSelector(sel_deviceFamily);
    v5->_deviceFamily = [coderCopy decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_deviceHomeButtonType);
    v5->_deviceHomeButtonType = [coderCopy decodeIntegerForKey:v17];

    v18 = NSStringFromSelector(sel_style);
    v5->_style = [coderCopy decodeIntegerForKey:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_displayScale);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    displayScale = v5->_displayScale;
    v5->_displayScale = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_cornerRadius);
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    cornerRadius = v5->_cornerRadius;
    v5->_cornerRadius = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_scaleFactor);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    scaleFactor = v5->_scaleFactor;
    v5->_scaleFactor = v29;

    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_originalResolution);
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
    originalResolution = v5->_originalResolution;
    v5->_originalResolution = v33;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_systemRootLayerScale);
    v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];
    systemRootLayerScale = v5->_systemRootLayerScale;
    v5->_systemRootLayerScale = v37;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_systemRootLayerTransform);
    v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];
    systemRootLayerTransform = v5->_systemRootLayerTransform;
    v5->_systemRootLayerTransform = v41;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  frameRate = [(CXScreenShareAttributes *)self frameRate];
  v6 = NSStringFromSelector(sel_frameRate);
  [coderCopy encodeObject:frameRate forKey:v6];

  displayID = [(CXScreenShareAttributes *)self displayID];
  v8 = NSStringFromSelector(sel_displayID);
  [coderCopy encodeObject:displayID forKey:v8];

  isWindowed = [(CXScreenShareAttributes *)self isWindowed];
  v10 = NSStringFromSelector(sel_isWindowed);
  [coderCopy encodeBool:isWindowed forKey:v10];

  windowUUID = [(CXScreenShareAttributes *)self windowUUID];
  v12 = NSStringFromSelector(sel_windowUUID);
  [coderCopy encodeObject:windowUUID forKey:v12];

  deviceFamily = [(CXScreenShareAttributes *)self deviceFamily];
  v14 = NSStringFromSelector(sel_deviceFamily);
  [coderCopy encodeInteger:deviceFamily forKey:v14];

  deviceHomeButtonType = [(CXScreenShareAttributes *)self deviceHomeButtonType];
  v16 = NSStringFromSelector(sel_deviceHomeButtonType);
  [coderCopy encodeInteger:deviceHomeButtonType forKey:v16];

  style = [(CXScreenShareAttributes *)self style];
  v18 = NSStringFromSelector(sel_style);
  [coderCopy encodeInteger:style forKey:v18];

  displayScale = [(CXScreenShareAttributes *)self displayScale];
  v20 = NSStringFromSelector(sel_displayScale);
  [coderCopy encodeObject:displayScale forKey:v20];

  cornerRadius = [(CXScreenShareAttributes *)self cornerRadius];
  v22 = NSStringFromSelector(sel_cornerRadius);
  [coderCopy encodeObject:cornerRadius forKey:v22];

  scaleFactor = [(CXScreenShareAttributes *)self scaleFactor];
  v24 = NSStringFromSelector(sel_scaleFactor);
  [coderCopy encodeObject:scaleFactor forKey:v24];

  originalResolution = [(CXScreenShareAttributes *)self originalResolution];
  v26 = NSStringFromSelector(sel_originalResolution);
  [coderCopy encodeObject:originalResolution forKey:v26];

  systemRootLayerScale = [(CXScreenShareAttributes *)self systemRootLayerScale];
  v28 = NSStringFromSelector(sel_systemRootLayerScale);
  [coderCopy encodeObject:systemRootLayerScale forKey:v28];

  systemRootLayerTransform = [(CXScreenShareAttributes *)self systemRootLayerTransform];
  v29 = NSStringFromSelector(sel_systemRootLayerTransform);
  [coderCopy encodeObject:systemRootLayerTransform forKey:v29];
}

@end