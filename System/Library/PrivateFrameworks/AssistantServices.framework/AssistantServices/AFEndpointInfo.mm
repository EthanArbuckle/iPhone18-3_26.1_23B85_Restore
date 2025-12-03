@interface AFEndpointInfo
+ (id)newWithBuilder:(id)builder;
- (AFEndpointInfo)initWithBuilder:(id)builder;
- (AFEndpointInfo)initWithCoder:(id)coder;
- (AFEndpointInfo)initWithDictionaryRepresentation:(id)representation;
- (AFEndpointInfo)initWithIdentifier:(id)identifier mediaRouteIdentifier:(id)routeIdentifier;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
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

- (AFEndpointInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"mediaRouteIdentifier"];

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"AFEndpointInfo::identifier"];
  [coderCopy encodeObject:self->_mediaRouteIdentifier forKey:@"AFEndpointInfo::mediaRouteIdentifier"];
}

- (AFEndpointInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEndpointInfo::identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEndpointInfo::mediaRouteIdentifier"];

  v7 = [(AFEndpointInfo *)self initWithIdentifier:v5 mediaRouteIdentifier:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(AFEndpointInfo *)v5 identifier];
      identifier = self->_identifier;
      if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
      {
        mediaRouteIdentifier = [(AFEndpointInfo *)v5 mediaRouteIdentifier];
        mediaRouteIdentifier = self->_mediaRouteIdentifier;
        v10 = mediaRouteIdentifier == mediaRouteIdentifier || [(NSString *)mediaRouteIdentifier isEqual:mediaRouteIdentifier];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFEndpointInfo;
  v5 = [(AFEndpointInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, mediaRouteIdentifier = %@}", v5, self->_identifier, self->_mediaRouteIdentifier];

  return v6;
}

- (AFEndpointInfo)initWithIdentifier:(id)identifier mediaRouteIdentifier:(id)routeIdentifier
{
  identifierCopy = identifier;
  routeIdentifierCopy = routeIdentifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AFEndpointInfo_initWithIdentifier_mediaRouteIdentifier___block_invoke;
  v12[3] = &unk_1E7342890;
  v13 = identifierCopy;
  v14 = routeIdentifierCopy;
  v8 = routeIdentifierCopy;
  v9 = identifierCopy;
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

- (AFEndpointInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = AFEndpointInfo;
  v5 = [(AFEndpointInfo *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFEndpointInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFEndpointInfoMutation *)v7 isDirty])
    {
      getIdentifier = [(_AFEndpointInfoMutation *)v7 getIdentifier];
      v9 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      getMediaRouteIdentifier = [(_AFEndpointInfoMutation *)v7 getMediaRouteIdentifier];
      v12 = [getMediaRouteIdentifier copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFEndpointInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFEndpointInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFEndpointInfo);
      getIdentifier = [(_AFEndpointInfoMutation *)v5 getIdentifier];
      v8 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      getMediaRouteIdentifier = [(_AFEndpointInfoMutation *)v5 getMediaRouteIdentifier];
      v11 = [getMediaRouteIdentifier copy];
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