@interface ARAppClipCodeResult
- (ARAppClipCodeResult)initWithCoder:(id)coder;
- (CGSize)size;
- (__n128)setCodeToWorldVisionTransform:(__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARAppClipCodeResult

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy ar_encodeMatrix4x4:@"codeToWorldVisionTransform" forKey:{*&self[1].super.isa, *&self[1]._url, *&self[1]._urlEncodingVersion, self[1]._size.height}];
  *&v5 = self->_confidence;
  [coderCopy encodeFloat:@"confidence" forKey:v5];
  [coderCopy encodeBool:self->_isScaleReliable forKey:@"isScaleReliable"];
  [coderCopy encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodeInteger:self->_urlDecodingStateInternal forKey:@"urlDecodingState"];
  [coderCopy encodeInteger:self->_urlEncodingVersion forKey:@"urlEncodingVersion"];
}

- (ARAppClipCodeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ARAppClipCodeResult;
  v5 = [(ARAppClipCodeResult *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    [coderCopy ar_decodeMatrix4x4ForKey:@"codeToWorldVisionTransform"];
    *&v5[1].super.isa = v8;
    *&v5[1]._url = v9;
    *&v5[1]._urlEncodingVersion = v10;
    *&v5[1]._size.height = v11;
    [coderCopy decodeFloatForKey:@"confidence"];
    v5->_confidence = v12;
    v5->_isScaleReliable = [coderCopy decodeBoolForKey:@"isScaleReliable"];
    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v13;
    v5->_size.height = v14;
    v5->_urlDecodingStateInternal = [coderCopy decodeIntegerForKey:@"urlDecodingState"];
    v5->_urlEncodingVersion = [coderCopy decodeIntegerForKey:@"urlEncodingVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_url);
  v5 = *&self[1].super.isa;
  v6 = *&self[1]._url;
  v7 = *&self[1]._size.height;
  *(v4 + 96) = *&self[1]._urlEncodingVersion;
  *(v4 + 112) = v7;
  *(v4 + 64) = v5;
  *(v4 + 80) = v6;
  *(v4 + 12) = self->_confidence;
  *(v4 + 8) = self->_isScaleReliable;
  *(v4 + 40) = self->_size;
  *(v4 + 24) = self->_urlDecodingStateInternal;
  *(v4 + 32) = self->_urlEncodingVersion;
  return v4;
}

- (__n128)setCodeToWorldVisionTransform:(__n128)transform
{
  result[4] = a2;
  result[5] = transform;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end