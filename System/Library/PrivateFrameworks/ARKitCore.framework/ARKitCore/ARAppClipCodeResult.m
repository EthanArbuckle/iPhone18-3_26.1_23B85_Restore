@interface ARAppClipCodeResult
- (ARAppClipCodeResult)initWithCoder:(id)a3;
- (CGSize)size;
- (__n128)setCodeToWorldVisionTransform:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARAppClipCodeResult

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v6 = a3;
  [v6 encodeObject:url forKey:@"url"];
  [v6 ar_encodeMatrix4x4:@"codeToWorldVisionTransform" forKey:{*&self[1].super.isa, *&self[1]._url, *&self[1]._urlEncodingVersion, self[1]._size.height}];
  *&v5 = self->_confidence;
  [v6 encodeFloat:@"confidence" forKey:v5];
  [v6 encodeBool:self->_isScaleReliable forKey:@"isScaleReliable"];
  [v6 encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v6 encodeInteger:self->_urlDecodingStateInternal forKey:@"urlDecodingState"];
  [v6 encodeInteger:self->_urlEncodingVersion forKey:@"urlEncodingVersion"];
}

- (ARAppClipCodeResult)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ARAppClipCodeResult;
  v5 = [(ARAppClipCodeResult *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    [v4 ar_decodeMatrix4x4ForKey:@"codeToWorldVisionTransform"];
    *&v5[1].super.isa = v8;
    *&v5[1]._url = v9;
    *&v5[1]._urlEncodingVersion = v10;
    *&v5[1]._size.height = v11;
    [v4 decodeFloatForKey:@"confidence"];
    v5->_confidence = v12;
    v5->_isScaleReliable = [v4 decodeBoolForKey:@"isScaleReliable"];
    [v4 decodeCGSizeForKey:@"size"];
    v5->_size.width = v13;
    v5->_size.height = v14;
    v5->_urlDecodingStateInternal = [v4 decodeIntegerForKey:@"urlDecodingState"];
    v5->_urlEncodingVersion = [v4 decodeIntegerForKey:@"urlEncodingVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (__n128)setCodeToWorldVisionTransform:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
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