@interface _LTTaskContext
- (_LTTaskContext)initWithCoder:(id)coder;
- (_LTTaskContext)initWithSessionID:(id)d taskHint:(int64_t)hint localePair:(id)pair deviceOS:(id)s deviceType:(id)type appIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTaskContext

- (_LTTaskContext)initWithSessionID:(id)d taskHint:(int64_t)hint localePair:(id)pair deviceOS:(id)s deviceType:(id)type appIdentifier:(id)identifier
{
  dCopy = d;
  pairCopy = pair;
  sCopy = s;
  typeCopy = type;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = _LTTaskContext;
  v18 = [(_LTTaskContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, d);
    v19->_taskHint = hint;
    objc_storeStrong(&v19->_localePair, pair);
    objc_storeStrong(&v19->_deviceOS, s);
    objc_storeStrong(&v19->_deviceType, type);
    objc_storeStrong(&v19->_appIdentifier, identifier);
    v20 = v19;
  }

  return v19;
}

- (_LTTaskContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _LTTaskContext;
  v5 = [(_LTTaskContext *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v5->_taskHint = [coderCopy decodeIntegerForKey:@"taskHint"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceOS"];
    deviceOS = v5->_deviceOS;
    v5->_deviceOS = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];
  [coderCopy encodeInteger:self->_taskHint forKey:@"taskHint"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeObject:self->_deviceOS forKey:@"deviceOS"];
  [coderCopy encodeObject:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_appIdentifier forKey:@"appIdentifier"];
}

@end