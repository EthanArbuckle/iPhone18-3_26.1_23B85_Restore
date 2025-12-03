@interface SHMediaItem
+ (SHMediaItem)mediaItemWithProperties:(NSDictionary *)properties;
+ (id)sh_uiServerConnection;
+ (id)transformedPropertiesFromProperties:(id)properties;
+ (void)presentMediaItem:(id)item completionHandler:(id)handler;
+ (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler;
- (BOOL)describesFrequencySkew:(double)skew;
- (BOOL)describesOffset:(double)offset;
- (BOOL)explicitContent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualMediaItem:(id)item;
- (CGSize)targetArtworkImageSizeFromTargetSize:(CGSize)size aspectRatio:(double)ratio;
- (CLLocation)matchLocation;
- (NSArray)genres;
- (NSString)fuzzyRepresentation;
- (NSURL)artworkURL;
- (NSUUID)identifier;
- (SHArtwork)artwork;
- (SHMediaItem)initWithCoder:(id)coder;
- (SHMediaItem)initWithProperties:(id)properties;
- (double)duration;
- (id)artworkURLForSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)fetchRawSongResponseData;
- (id)objectForKeyedSubscript:(SHMediaItemProperty)key;
- (id)validValueForProperty:(id)property;
- (id)valueForProperty:(SHMediaItemProperty)property;
- (int64_t)shazamCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMediaItem

+ (id)sh_uiServerConnection
{
  if (sh_uiServerConnection_onceToken_0 != -1)
  {
    +[SHMediaItem(Presentation) sh_uiServerConnection];
  }

  v3 = sh_uiServerConnection_serverConnection_0;

  return v3;
}

void __50__SHMediaItem_Presentation__sh_uiServerConnection__block_invoke()
{
  v0 = [SHShazamKitUIServiceConnection alloc];
  v3 = objc_opt_new();
  v1 = [(SHShazamKitUIServiceConnection *)v0 initWithConnectionProvider:v3];
  v2 = sh_uiServerConnection_serverConnection_0;
  sh_uiServerConnection_serverConnection_0 = v1;
}

+ (void)presentMediaItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    itemCopy = item;
    sh_uiServerConnection = [self sh_uiServerConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SHMediaItem_Presentation__presentMediaItem_completionHandler___block_invoke;
    v9[3] = &unk_2788F7C10;
    v10 = handlerCopy;
    [sh_uiServerConnection presentMediaItem:itemCopy completionHandler:v9];
  }
}

void __64__SHMediaItem_Presentation__presentMediaItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SHError remapErrorToClientError:a2];
  (*(*(a1 + 32) + 16))();
}

+ (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    settingsCopy = settings;
    itemCopy = item;
    sh_uiServerConnection = [self sh_uiServerConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__SHMediaItem_Presentation__presentMediaItem_presentationSettings_completionHandler___block_invoke;
    v12[3] = &unk_2788F7C58;
    v13 = handlerCopy;
    [sh_uiServerConnection presentMediaItem:itemCopy presentationSettings:settingsCopy completionHandler:v12];
  }
}

void __85__SHMediaItem_Presentation__presentMediaItem_presentationSettings_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [SHError remapErrorToClientError:a4];
  (*(*(a1 + 32) + 16))();
}

+ (SHMediaItem)mediaItemWithProperties:(NSDictionary *)properties
{
  v3 = properties;
  v4 = [[SHMediaItem alloc] initWithProperties:v3];

  return v4;
}

- (SHMediaItem)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = SHMediaItem;
  v5 = [(SHMediaItem *)&v11 init];
  if (v5)
  {
    v6 = [SHMediaItem transformedPropertiesFromProperties:propertiesCopy];
    properties = v5->_properties;
    v5->_properties = v6;

    uUID = [MEMORY[0x277CCAD78] UUID];
    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = uUID;
  }

  return v5;
}

- (id)valueForProperty:(SHMediaItemProperty)property
{
  v4 = property;
  properties = [(SHMediaItem *)self properties];
  v6 = [properties objectForKeyedSubscript:v4];

  return v6;
}

- (id)objectForKeyedSubscript:(SHMediaItemProperty)key
{
  v4 = key;
  properties = [(SHMediaItem *)self properties];
  v6 = [properties objectForKeyedSubscript:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaItem alloc];
  properties = [(SHMediaItem *)self properties];
  v7 = [properties copyWithZone:zone];
  v8 = [(SHMediaItem *)v5 initWithProperties:v7];

  _rawResponseSongsData = [(SHMediaItem *)self _rawResponseSongsData];
  v10 = [_rawResponseSongsData copyWithZone:zone];
  [(SHMediaItem *)v8 set_rawResponseSongsData:v10];

  underlyingIdentifier = [(SHMediaItem *)self underlyingIdentifier];
  v12 = [underlyingIdentifier copyWithZone:zone];
  [(SHMediaItem *)v8 setUnderlyingIdentifier:v12];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  properties = [(SHMediaItem *)self properties];
  v5 = [properties objectForKeyedSubscript:@"sh_matchLocationCoordinate"];

  if (v5)
  {
    matchLocation = [(SHMediaItem *)self matchLocation];
    properties3 = matchLocation;
    if (matchLocation)
    {
      v8 = MEMORY[0x277CCABB0];
      [matchLocation coordinate];
      v9 = [v8 numberWithDouble:?];
      [coderCopy encodeObject:v9 forKey:@"matchLocationLatitude"];

      v10 = MEMORY[0x277CCABB0];
      [properties3 coordinate];
      v12 = [v10 numberWithDouble:v11];
      [coderCopy encodeObject:v12 forKey:@"matchLocationLongitude"];
    }

    properties2 = [(SHMediaItem *)self properties];
    v14 = [properties2 mutableCopy];

    [v14 removeObjectForKey:@"sh_matchLocationCoordinate"];
    v15 = [v14 copy];
    [coderCopy encodeObject:v15 forKey:@"properties"];
  }

  else
  {
    properties3 = [(SHMediaItem *)self properties];
    [coderCopy encodeObject:properties3 forKey:@"properties"];
  }

  _rawResponseSongsData = [(SHMediaItem *)self _rawResponseSongsData];
  [coderCopy encodeObject:_rawResponseSongsData forKey:@"SHMediaItemRawResponseData"];

  underlyingIdentifier = [(SHMediaItem *)self underlyingIdentifier];
  [coderCopy encodeObject:underlyingIdentifier forKey:@"underlyingIdentifier"];
}

- (SHMediaItem)initWithCoder:(id)coder
{
  v25[11] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = SHMediaItem;
  v5 = [(SHMediaItem *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v25[4] = objc_opt_class();
    v25[5] = objc_opt_class();
    v25[6] = objc_opt_class();
    v25[7] = objc_opt_class();
    v25[8] = objc_opt_class();
    v25[9] = objc_opt_class();
    v25[10] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:11];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"properties"];
    v10 = [v9 mutableCopy];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchLocationLatitude"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchLocationLongitude"];
    v13 = [SHLocationTransformer coordinateValueFromLatitude:v11 longitude:v12];
    [v10 setValue:v13 forKey:@"sh_matchLocationCoordinate"];

    v14 = [v10 copy];
    properties = v5->_properties;
    v5->_properties = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaItemRawResponseData"];
    rawResponseSongsData = v5->__rawResponseSongsData;
    v5->__rawResponseSongsData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingIdentifier"];
    v19 = v18;
    if (v18)
    {
      uUID = v18;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = uUID;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaItem *)self isEqualMediaItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualMediaItem:(id)item
{
  itemCopy = item;
  identifier = [(SHMediaItem *)self identifier];
  identifier2 = [itemCopy identifier];

  LOBYTE(itemCopy) = [identifier isEqual:identifier2];
  return itemCopy;
}

- (unint64_t)hash
{
  identifier = [(SHMediaItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)debugDescription
{
  properties = [(SHMediaItem *)self properties];
  v3 = [properties debugDescription];

  return v3;
}

- (NSURL)artworkURL
{
  v3 = [(SHMediaItem *)self validValueForProperty:@"sh_artworkURL"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SHMediaItem *)self artworkURLForSize:800.0, 800.0];
  }

  v6 = v5;

  return v6;
}

- (SHArtwork)artwork
{
  v3 = [SHArtwork alloc];
  artworkDictionary = [(SHMediaItem *)self artworkDictionary];
  v5 = [(SHArtwork *)v3 initWithDictionary:artworkDictionary error:0];

  return v5;
}

- (id)artworkURLForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [SHArtwork alloc];
  artworkDictionary = [(SHMediaItem *)self artworkDictionary];
  v19 = 0;
  v8 = [(SHArtwork *)v6 initWithDictionary:artworkDictionary error:&v19];

  if (!v8)
  {
    v9 = [(SHMediaItem *)self validValueForProperty:@"sh_artworkURL"];
    if (!v9)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v10 = v9;
    v8 = [[SHArtwork alloc] initWithURL:v9];
  }

  maximumWidth = [(SHArtwork *)v8 maximumWidth];
  if (maximumWidth)
  {
    v12 = maximumWidth;
  }

  else
  {
    v12 = width;
  }

  maximumHeight = [(SHArtwork *)v8 maximumHeight];
  v14 = maximumHeight;
  if (!maximumHeight)
  {
    v14 = height;
  }

  [(SHMediaItem *)self targetArtworkImageSizeFromTargetSize:width aspectRatio:height, v12 / v14];
  v17 = [(SHArtwork *)v8 URLWithWidth:v15 height:v16];

LABEL_10:

  return v17;
}

- (CGSize)targetArtworkImageSizeFromTargetSize:(CGSize)size aspectRatio:(double)ratio
{
  if (size.width < size.height)
  {
    size.width = size.height;
  }

  v4 = fmin(size.width, 800.0);
  if (ratio <= 1.0)
  {
    v5 = v4 * ratio;
  }

  else
  {
    v5 = v4;
    v4 = v4 / ratio;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (BOOL)explicitContent
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_explicitContent"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSArray)genres
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_genres"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (int64_t)shazamCount
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_shazamCount"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (NSUUID)identifier
{
  v3 = [(SHMediaItem *)self validValueForProperty:@"sh_identifier"];
  v4 = v3;
  if (v3)
  {
    underlyingIdentifier = v3;
  }

  else
  {
    underlyingIdentifier = [(SHMediaItem *)self underlyingIdentifier];
  }

  v6 = underlyingIdentifier;

  return v6;
}

- (CLLocation)matchLocation
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_matchLocationCoordinate"];
  v3 = [SHLocationTransformer locationFromCoordinateValue:v2];

  return v3;
}

- (double)duration
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_duration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)fetchRawSongResponseData
{
  _rawResponseSongsData = [(SHMediaItem *)self _rawResponseSongsData];

  if (!_rawResponseSongsData)
  {
    identifier = [(SHMediaItem *)self identifier];
    v5 = [SHMediaItemDaemonConnection fetchRawSongResponseDataUsingMediaItemIdentifier:identifier];
    [(SHMediaItem *)self set_rawResponseSongsData:v5];
  }

  return [(SHMediaItem *)self _rawResponseSongsData];
}

- (id)validValueForProperty:(id)property
{
  propertyCopy = property;
  properties = [(SHMediaItem *)self properties];
  v6 = [properties objectForKeyedSubscript:propertyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [SHMediaItemPropertyUtilities isShazamKitDefinedMediaItemProperty:propertyCopy])
  {
    v7 = 0;
  }

  else
  {
    if (v6)
    {
      if ([SHMediaItemPropertyUtilities isShazamKitDefinedMediaItemProperty:propertyCopy])
      {
        [SHMediaItemPropertyUtilities typeForShazamKitProperty:propertyCopy];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x277CBEAD8];
          v10 = *MEMORY[0x277CBE658];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for %@ is not of the correct type: %@", propertyCopy, v6];
          v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
          v13 = v12;

          objc_exception_throw(v12);
        }
      }
    }

    v7 = v6;
  }

  return v7;
}

- (NSString)fuzzyRepresentation
{
  fuzzyRepresentation = self->_fuzzyRepresentation;
  if (!fuzzyRepresentation)
  {
    title = [(SHMediaItem *)self title];
    v5 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"([");
    v6 = [title rangeOfCharacterFromSet:v5];

    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    invertedSet = [alphanumericCharacterSet invertedSet];

    title2 = [(SHMediaItem *)self title];
    v10 = title2;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      lowercaseString = [title2 lowercaseString];
      v11LowercaseString = [lowercaseString componentsSeparatedByCharactersInSet:invertedSet];
      v13 = [v11LowercaseString componentsJoinedByString:&stru_2845C78F0];
      v14 = self->_fuzzyRepresentation;
      self->_fuzzyRepresentation = v13;
    }

    else
    {
      lowercaseString = [title2 substringToIndex:v6];
      v11LowercaseString = [lowercaseString lowercaseString];
      v14 = [v11LowercaseString componentsSeparatedByCharactersInSet:invertedSet];
      v15 = [v14 componentsJoinedByString:&stru_2845C78F0];
      v16 = self->_fuzzyRepresentation;
      self->_fuzzyRepresentation = v15;
    }

    fuzzyRepresentation = self->_fuzzyRepresentation;
  }

  return fuzzyRepresentation;
}

- (BOOL)describesFrequencySkew:(double)skew
{
  v18 = *MEMORY[0x277D85DE8];
  frequencySkewRanges = [(SHMediaItem *)self frequencySkewRanges];
  v6 = [frequencySkewRanges count];

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    frequencySkewRanges2 = [(SHMediaItem *)self frequencySkewRanges];
    v8 = [frequencySkewRanges2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(frequencySkewRanges2);
          }

          if ([*(*(&v13 + 1) + 8 * i) contains:skew])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [frequencySkewRanges2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)describesOffset:(double)offset
{
  v19 = *MEMORY[0x277D85DE8];
  timeRanges = [(SHMediaItem *)self timeRanges];
  v6 = [timeRanges count];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    timeRanges2 = [(SHMediaItem *)self timeRanges];
    v8 = [timeRanges2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      v10 = offset + 0.01;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(timeRanges2);
          }

          if ([*(*(&v14 + 1) + 8 * i) contains:v10])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [timeRanges2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)transformedPropertiesFromProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"sh_matchLocationCoordinate_Swift"];
  if ([SHLocationTransformer isValidCoordinateValue:v4])
  {
    v5 = [propertiesCopy mutableCopy];
    [v5 setValue:v4 forKey:@"sh_matchLocationCoordinate"];
    [v5 removeObjectForKey:@"sh_matchLocationCoordinate_Swift"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = propertiesCopy;
  }

  return v6;
}

@end