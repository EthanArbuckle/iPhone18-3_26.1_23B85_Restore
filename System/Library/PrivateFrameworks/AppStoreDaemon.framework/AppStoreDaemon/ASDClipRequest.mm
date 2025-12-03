@interface ASDClipRequest
- (ASDClipRequest)initWithCoder:(id)coder;
- (ASDClipRequest)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDClipRequest

- (ASDClipRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ASDClipRequest;
  v5 = [(ASDClipRequest *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = uUID;
  }

  return v5;
}

- (ASDClipRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ASDClipRequest;
  v5 = [(ASDClipRequest *)&v25 init];
  if (v5)
  {
    v5->_prefetchDecryption = [coderCopy decodeBoolForKey:@"_prefetchDecryption"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_placeholderArtwork"];
    placeholderArtwork = v5->_placeholderArtwork;
    v5->_placeholderArtwork = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_installSourceBundleID"];
    installSourceBundleID = v5->_installSourceBundleID;
    v5->_installSourceBundleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_referrerType"];
    referrerType = v5->_referrerType;
    v5->_referrerType = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v22;

    v5->_thirdPartyWithNoAppReferrer = [coderCopy decodeBoolForKey:@"_thirdPartyWithNoAppReferrer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  prefetchDecryption = self->_prefetchDecryption;
  coderCopy = coder;
  [coderCopy encodeBool:prefetchDecryption forKey:@"_prefetchDecryption"];
  [coderCopy encodeObject:self->_placeholderArtwork forKey:@"_placeholderArtwork"];
  [coderCopy encodeObject:self->_uniqueID forKey:@"_uniqueID"];
  [coderCopy encodeObject:self->_dictionary forKey:@"_dictionary"];
  [coderCopy encodeObject:self->_installSourceBundleID forKey:@"_installSourceBundleID"];
  [coderCopy encodeObject:self->_referrerType forKey:@"_referrerType"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"_sourceURL"];
  [coderCopy encodeBool:self->_thirdPartyWithNoAppReferrer forKey:@"_thirdPartyWithNoAppReferrer"];
}

@end