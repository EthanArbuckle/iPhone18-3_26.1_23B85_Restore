@interface MPRadioStation
- (BOOL)isEqual:(id)equal;
- (MPRadioStation)initWithCoder:(id)coder;
- (MPRadioStation)initWithModelStation:(id)station;
- (MPRadioStation)initWithPlayParameters:(id)parameters;
- (MPRadioStation)initWithStation:(id)station;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPRadioStation

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_localizedName copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_stationStringID copyWithZone:zone];
    v9 = v5[4];
    v5[4] = v8;

    v10 = [(NSString *)self->_localizedDescription copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;

    v5[1] = self->_uniqueIdentifier;
  }

  return v5;
}

- (MPRadioStation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v13 init];
  if (v5)
  {
    v5->_uniqueIdentifier = [coderCopy decodeInt64ForKey:@"uniqueIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stationStringID"];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInt64:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
    [coderCopy encodeObject:self->_stationStringID forKey:@"stationStringID"];
    [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
    [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"only keyed coding is supported"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    uniqueIdentifier = [(MPRadioStation *)self uniqueIdentifier];
    v6 = uniqueIdentifier == [equalCopy uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPRadioStation)initWithStation:(id)station
{
  stationCopy = station;
  v13.receiver = self;
  v13.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v13 init];
  if (v5)
  {
    name = [stationCopy name];
    localizedName = v5->_localizedName;
    v5->_localizedName = name;

    stationDescription = [stationCopy stationDescription];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = stationDescription;

    v5->_uniqueIdentifier = [stationCopy stationID];
    stationStringID = [stationCopy stationStringID];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = stationStringID;
  }

  return v5;
}

- (MPRadioStation)initWithModelStation:(id)station
{
  stationCopy = station;
  v11.receiver = self;
  v11.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__MPRadioStation_initWithModelStation___block_invoke;
    v8[3] = &unk_1E76823C0;
    v9 = v5;
    v10 = stationCopy;
    [MPModelObject performWithoutEnforcement:v8];
  }

  return v6;
}

void __39__MPRadioStation_initWithModelStation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) name];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(a1 + 40) editorNotes];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [*(a1 + 40) identifiers];
  v9 = [v8 radio];
  *(*(a1 + 32) + 8) = [v9 stationID];

  v14 = [*(a1 + 40) identifiers];
  v10 = [v14 radio];
  v11 = [v10 stationStringID];
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = v11;
}

- (MPRadioStation)initWithPlayParameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v12 init];
  if (v5)
  {
    itemKind = [parametersCopy itemKind];
    v7 = [itemKind isEqual:@"radioStation"];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    itemID = [parametersCopy itemID];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = itemID;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

@end