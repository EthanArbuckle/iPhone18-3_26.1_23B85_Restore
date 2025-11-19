@interface MPRadioStation
- (BOOL)isEqual:(id)a3;
- (MPRadioStation)initWithCoder:(id)a3;
- (MPRadioStation)initWithModelStation:(id)a3;
- (MPRadioStation)initWithPlayParameters:(id)a3;
- (MPRadioStation)initWithStation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPRadioStation

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_localizedName copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_stationStringID copyWithZone:a3];
    v9 = v5[4];
    v5[4] = v8;

    v10 = [(NSString *)self->_localizedDescription copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;

    v5[1] = self->_uniqueIdentifier;
  }

  return v5;
}

- (MPRadioStation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v13 init];
  if (v5)
  {
    v5->_uniqueIdentifier = [v4 decodeInt64ForKey:@"uniqueIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stationStringID"];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeInt64:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
    [v4 encodeObject:self->_stationStringID forKey:@"stationStringID"];
    [v4 encodeObject:self->_localizedName forKey:@"localizedName"];
    [v4 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"only keyed coding is supported"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MPRadioStation *)self uniqueIdentifier];
    v6 = v5 == [v4 uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPRadioStation)initWithStation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v13 init];
  if (v5)
  {
    v6 = [v4 name];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [v4 stationDescription];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v8;

    v5->_uniqueIdentifier = [v4 stationID];
    v10 = [v4 stationStringID];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v10;
  }

  return v5;
}

- (MPRadioStation)initWithModelStation:(id)a3
{
  v4 = a3;
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
    v10 = v4;
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

- (MPRadioStation)initWithPlayParameters:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPRadioStation;
  v5 = [(MPRadioStation *)&v12 init];
  if (v5)
  {
    v6 = [v4 itemKind];
    v7 = [v6 isEqual:@"radioStation"];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v8 = [v4 itemID];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

@end