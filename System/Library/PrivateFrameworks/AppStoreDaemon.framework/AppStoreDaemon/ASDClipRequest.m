@interface ASDClipRequest
- (ASDClipRequest)initWithCoder:(id)a3;
- (ASDClipRequest)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDClipRequest

- (ASDClipRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDClipRequest;
  v5 = [(ASDClipRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v8;
  }

  return v5;
}

- (ASDClipRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ASDClipRequest;
  v5 = [(ASDClipRequest *)&v25 init];
  if (v5)
  {
    v5->_prefetchDecryption = [v4 decodeBoolForKey:@"_prefetchDecryption"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_placeholderArtwork"];
    placeholderArtwork = v5->_placeholderArtwork;
    v5->_placeholderArtwork = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_installSourceBundleID"];
    installSourceBundleID = v5->_installSourceBundleID;
    v5->_installSourceBundleID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_referrerType"];
    referrerType = v5->_referrerType;
    v5->_referrerType = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v22;

    v5->_thirdPartyWithNoAppReferrer = [v4 decodeBoolForKey:@"_thirdPartyWithNoAppReferrer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  prefetchDecryption = self->_prefetchDecryption;
  v5 = a3;
  [v5 encodeBool:prefetchDecryption forKey:@"_prefetchDecryption"];
  [v5 encodeObject:self->_placeholderArtwork forKey:@"_placeholderArtwork"];
  [v5 encodeObject:self->_uniqueID forKey:@"_uniqueID"];
  [v5 encodeObject:self->_dictionary forKey:@"_dictionary"];
  [v5 encodeObject:self->_installSourceBundleID forKey:@"_installSourceBundleID"];
  [v5 encodeObject:self->_referrerType forKey:@"_referrerType"];
  [v5 encodeObject:self->_sourceURL forKey:@"_sourceURL"];
  [v5 encodeBool:self->_thirdPartyWithNoAppReferrer forKey:@"_thirdPartyWithNoAppReferrer"];
}

@end