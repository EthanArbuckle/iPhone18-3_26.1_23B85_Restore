@interface CTLazuliMessageGroupGeoLocationPush
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageGroupGeoLocationPush:(id)push;
- (CTLazuliMessageGroupGeoLocationPush)initWithCoder:(id)coder;
- (CTLazuliMessageGroupGeoLocationPush)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliMessageGroupGeoLocationPush

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chatInformation = [(CTLazuliMessageGroupGeoLocationPush *)self chatInformation];
  [v3 appendFormat:@", chatInformation = %@", chatInformation];

  coordinates = [(CTLazuliMessageGroupGeoLocationPush *)self coordinates];
  [v3 appendFormat:@", coordinates = %@", coordinates];

  metaData = [(CTLazuliMessageGroupGeoLocationPush *)self metaData];
  [v3 appendFormat:@", metaData = %@", metaData];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageGroupGeoLocationPush:(id)push
{
  pushCopy = push;
  chatInformation = [(CTLazuliMessageGroupGeoLocationPush *)self chatInformation];
  chatInformation2 = [pushCopy chatInformation];
  if (chatInformation != chatInformation2)
  {
    chatInformation3 = [(CTLazuliMessageGroupGeoLocationPush *)self chatInformation];
    chatInformation4 = [pushCopy chatInformation];
    if (![chatInformation3 isEqualToCTLazuliGroupChatInformation:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  coordinates = [(CTLazuliMessageGroupGeoLocationPush *)self coordinates];
  coordinates2 = [pushCopy coordinates];
  if (coordinates != coordinates2)
  {
    coordinates3 = [(CTLazuliMessageGroupGeoLocationPush *)self coordinates];
    coordinates4 = [pushCopy coordinates];
    if (![coordinates3 isEqualToCTLazuliLocationCoordinates:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  metaData = [(CTLazuliMessageGroupGeoLocationPush *)self metaData];
  metaData2 = [pushCopy metaData];
  v12 = metaData2;
  if (metaData == metaData2)
  {

    v7 = 1;
  }

  else
  {
    metaData3 = [(CTLazuliMessageGroupGeoLocationPush *)self metaData];
    metaData4 = [pushCopy metaData];
    v7 = [metaData3 isEqualToCTLazuliCustomMetaData:metaData4];
  }

  if (coordinates != coordinates2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (chatInformation != chatInformation2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageGroupGeoLocationPush *)self isEqualToCTLazuliMessageGroupGeoLocationPush:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageGroupGeoLocationPush allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chatInformation copyWithZone:zone];
  [(CTLazuliMessageGroupGeoLocationPush *)v5 setChatInformation:v6];

  v7 = [(CTLazuliLocationCoordinates *)self->_coordinates copyWithZone:zone];
  [(CTLazuliMessageGroupGeoLocationPush *)v5 setCoordinates:v7];

  v8 = [(CTLazuliCustomMetaData *)self->_metaData copyWithZone:zone];
  [(CTLazuliMessageGroupGeoLocationPush *)v5 setMetaData:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_chatInformation forKey:@"kChatInformationKey"];
  [coderCopy encodeObject:self->_coordinates forKey:@"kCoordinatesKey"];
  [coderCopy encodeObject:self->_metaData forKey:@"kMetaDataKey"];
}

- (CTLazuliMessageGroupGeoLocationPush)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliMessageGroupGeoLocationPush;
  v5 = [(CTLazuliMessageGroupGeoLocationPush *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatInformationKey"];
    chatInformation = v5->_chatInformation;
    v5->_chatInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoordinatesKey"];
    coordinates = v5->_coordinates;
    v5->_coordinates = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMetaDataKey"];
    metaData = v5->_metaData;
    v5->_metaData = v10;
  }

  return v5;
}

- (CTLazuliMessageGroupGeoLocationPush)initWithReflection:(const void *)reflection
{
  v15.receiver = self;
  v15.super_class = CTLazuliMessageGroupGeoLocationPush;
  v4 = [(CTLazuliMessageGroupGeoLocationPush *)&v15 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:reflection];
    chatInformation = v4->_chatInformation;
    v4->_chatInformation = v5;

    v7 = [[CTLazuliLocationCoordinates alloc] initWithReflection:reflection + 328];
    coordinates = v4->_coordinates;
    v4->_coordinates = v7;

    if (*(reflection + 368) == 1)
    {
      v9 = v4;
      v10 = [CTLazuliCustomMetaData alloc];
      if ((*(reflection + 368) & 1) == 0)
      {
        v14 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v14);
      }

      v11 = [(CTLazuliCustomMetaData *)v10 initWithReflection:reflection + 344];
    }

    else
    {
      v11 = 0;
    }

    metaData = v4->_metaData;
    v4->_metaData = v11;
  }

  return v4;
}

@end