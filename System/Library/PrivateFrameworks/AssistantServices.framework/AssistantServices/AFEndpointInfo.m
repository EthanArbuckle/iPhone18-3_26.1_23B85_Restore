@interface AFEndpointInfo
+ (id)newWithBuilder:(id)a3;
- (AFEndpointInfo)initWithBuilder:(id)a3;
- (AFEndpointInfo)initWithCoder:(id)a3;
- (AFEndpointInfo)initWithDictionaryRepresentation:(id)a3;
- (AFEndpointInfo)initWithIdentifier:(id)a3 mediaRouteIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFEndpointInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v4 setObject:mediaRouteIdentifier forKey:@"mediaRouteIdentifier"];
  }

  v7 = [v4 copy];

  return v7;
}

- (AFEndpointInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"mediaRouteIdentifier"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    self = [(AFEndpointInfo *)self initWithIdentifier:v6 mediaRouteIdentifier:v9];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"AFEndpointInfo::identifier"];
  [v5 encodeObject:self->_mediaRouteIdentifier forKey:@"AFEndpointInfo::mediaRouteIdentifier"];
}

- (AFEndpointInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFEndpointInfo::identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFEndpointInfo::mediaRouteIdentifier"];

  v7 = [(AFEndpointInfo *)self initWithIdentifier:v5 mediaRouteIdentifier:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFEndpointInfo *)v5 identifier];
      identifier = self->_identifier;
      if (identifier == v6 || [(NSString *)identifier isEqual:v6])
      {
        v8 = [(AFEndpointInfo *)v5 mediaRouteIdentifier];
        mediaRouteIdentifier = self->_mediaRouteIdentifier;
        v10 = mediaRouteIdentifier == v8 || [(NSString *)mediaRouteIdentifier isEqual:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFEndpointInfo;
  v5 = [(AFEndpointInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, mediaRouteIdentifier = %@}", v5, self->_identifier, self->_mediaRouteIdentifier];

  return v6;
}

- (AFEndpointInfo)initWithIdentifier:(id)a3 mediaRouteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AFEndpointInfo_initWithIdentifier_mediaRouteIdentifier___block_invoke;
  v12[3] = &unk_1E7342890;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(AFEndpointInfo *)self initWithBuilder:v12];

  return v10;
}

void __58__AFEndpointInfo_initWithIdentifier_mediaRouteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  [v4 setMediaRouteIdentifier:*(a1 + 40)];
}

- (AFEndpointInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFEndpointInfo;
  v5 = [(AFEndpointInfo *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFEndpointInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFEndpointInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFEndpointInfoMutation *)v7 getIdentifier];
      v9 = [v8 copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v11 = [(_AFEndpointInfoMutation *)v7 getMediaRouteIdentifier];
      v12 = [v11 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFEndpointInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFEndpointInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFEndpointInfo);
      v7 = [(_AFEndpointInfoMutation *)v5 getIdentifier];
      v8 = [v7 copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v10 = [(_AFEndpointInfoMutation *)v5 getMediaRouteIdentifier];
      v11 = [v10 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v11;
    }

    else
    {
      v6 = [(AFEndpointInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFEndpointInfo *)self copy];
  }

  return v6;
}

@end