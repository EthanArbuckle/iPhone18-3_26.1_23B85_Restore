@interface SHMediaItem
+ (SHMediaItem)mediaItemWithProperties:(NSDictionary *)properties;
+ (id)sh_uiServerConnection;
+ (id)transformedPropertiesFromProperties:(id)a3;
+ (void)presentMediaItem:(id)a3 completionHandler:(id)a4;
+ (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5;
- (BOOL)describesFrequencySkew:(double)a3;
- (BOOL)describesOffset:(double)a3;
- (BOOL)explicitContent;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualMediaItem:(id)a3;
- (CGSize)targetArtworkImageSizeFromTargetSize:(CGSize)a3 aspectRatio:(double)a4;
- (CLLocation)matchLocation;
- (NSArray)genres;
- (NSString)fuzzyRepresentation;
- (NSURL)artworkURL;
- (NSUUID)identifier;
- (SHArtwork)artwork;
- (SHMediaItem)initWithCoder:(id)a3;
- (SHMediaItem)initWithProperties:(id)a3;
- (double)duration;
- (id)artworkURLForSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)fetchRawSongResponseData;
- (id)objectForKeyedSubscript:(SHMediaItemProperty)key;
- (id)validValueForProperty:(id)a3;
- (id)valueForProperty:(SHMediaItemProperty)property;
- (int64_t)shazamCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

+ (void)presentMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [a1 sh_uiServerConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SHMediaItem_Presentation__presentMediaItem_completionHandler___block_invoke;
    v9[3] = &unk_2788F7C10;
    v10 = v6;
    [v8 presentMediaItem:v7 completionHandler:v9];
  }
}

void __64__SHMediaItem_Presentation__presentMediaItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SHError remapErrorToClientError:a2];
  (*(*(a1 + 32) + 16))();
}

+ (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = a4;
    v10 = a3;
    v11 = [a1 sh_uiServerConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__SHMediaItem_Presentation__presentMediaItem_presentationSettings_completionHandler___block_invoke;
    v12[3] = &unk_2788F7C58;
    v13 = v8;
    [v11 presentMediaItem:v10 presentationSettings:v9 completionHandler:v12];
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

- (SHMediaItem)initWithProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SHMediaItem;
  v5 = [(SHMediaItem *)&v11 init];
  if (v5)
  {
    v6 = [SHMediaItem transformedPropertiesFromProperties:v4];
    properties = v5->_properties;
    v5->_properties = v6;

    v8 = [MEMORY[0x277CCAD78] UUID];
    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = v8;
  }

  return v5;
}

- (id)valueForProperty:(SHMediaItemProperty)property
{
  v4 = property;
  v5 = [(SHMediaItem *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)objectForKeyedSubscript:(SHMediaItemProperty)key
{
  v4 = key;
  v5 = [(SHMediaItem *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaItem alloc];
  v6 = [(SHMediaItem *)self properties];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMediaItem *)v5 initWithProperties:v7];

  v9 = [(SHMediaItem *)self _rawResponseSongsData];
  v10 = [v9 copyWithZone:a3];
  [(SHMediaItem *)v8 set_rawResponseSongsData:v10];

  v11 = [(SHMediaItem *)self underlyingIdentifier];
  v12 = [v11 copyWithZone:a3];
  [(SHMediaItem *)v8 setUnderlyingIdentifier:v12];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(SHMediaItem *)self properties];
  v5 = [v4 objectForKeyedSubscript:@"sh_matchLocationCoordinate"];

  if (v5)
  {
    v6 = [(SHMediaItem *)self matchLocation];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x277CCABB0];
      [v6 coordinate];
      v9 = [v8 numberWithDouble:?];
      [v18 encodeObject:v9 forKey:@"matchLocationLatitude"];

      v10 = MEMORY[0x277CCABB0];
      [v7 coordinate];
      v12 = [v10 numberWithDouble:v11];
      [v18 encodeObject:v12 forKey:@"matchLocationLongitude"];
    }

    v13 = [(SHMediaItem *)self properties];
    v14 = [v13 mutableCopy];

    [v14 removeObjectForKey:@"sh_matchLocationCoordinate"];
    v15 = [v14 copy];
    [v18 encodeObject:v15 forKey:@"properties"];
  }

  else
  {
    v7 = [(SHMediaItem *)self properties];
    [v18 encodeObject:v7 forKey:@"properties"];
  }

  v16 = [(SHMediaItem *)self _rawResponseSongsData];
  [v18 encodeObject:v16 forKey:@"SHMediaItemRawResponseData"];

  v17 = [(SHMediaItem *)self underlyingIdentifier];
  [v18 encodeObject:v17 forKey:@"underlyingIdentifier"];
}

- (SHMediaItem)initWithCoder:(id)a3
{
  v25[11] = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"properties"];
    v10 = [v9 mutableCopy];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchLocationLatitude"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchLocationLongitude"];
    v13 = [SHLocationTransformer coordinateValueFromLatitude:v11 longitude:v12];
    [v10 setValue:v13 forKey:@"sh_matchLocationCoordinate"];

    v14 = [v10 copy];
    properties = v5->_properties;
    v5->_properties = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaItemRawResponseData"];
    rawResponseSongsData = v5->__rawResponseSongsData;
    v5->__rawResponseSongsData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingIdentifier"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x277CCAD78] UUID];
    }

    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaItem *)self isEqualMediaItem:v4];
  }

  return v5;
}

- (BOOL)isEqualMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaItem *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SHMediaItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)debugDescription
{
  v2 = [(SHMediaItem *)self properties];
  v3 = [v2 debugDescription];

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
  v4 = [(SHMediaItem *)self artworkDictionary];
  v5 = [(SHArtwork *)v3 initWithDictionary:v4 error:0];

  return v5;
}

- (id)artworkURLForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [SHArtwork alloc];
  v7 = [(SHMediaItem *)self artworkDictionary];
  v19 = 0;
  v8 = [(SHArtwork *)v6 initWithDictionary:v7 error:&v19];

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

  v11 = [(SHArtwork *)v8 maximumWidth];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = width;
  }

  v13 = [(SHArtwork *)v8 maximumHeight];
  v14 = v13;
  if (!v13)
  {
    v14 = height;
  }

  [(SHMediaItem *)self targetArtworkImageSizeFromTargetSize:width aspectRatio:height, v12 / v14];
  v17 = [(SHArtwork *)v8 URLWithWidth:v15 height:v16];

LABEL_10:

  return v17;
}

- (CGSize)targetArtworkImageSizeFromTargetSize:(CGSize)a3 aspectRatio:(double)a4
{
  if (a3.width < a3.height)
  {
    a3.width = a3.height;
  }

  v4 = fmin(a3.width, 800.0);
  if (a4 <= 1.0)
  {
    v5 = v4 * a4;
  }

  else
  {
    v5 = v4;
    v4 = v4 / a4;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (BOOL)explicitContent
{
  v2 = [(SHMediaItem *)self validValueForProperty:@"sh_explicitContent"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 longLongValue];

  return v3;
}

- (NSUUID)identifier
{
  v3 = [(SHMediaItem *)self validValueForProperty:@"sh_identifier"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SHMediaItem *)self underlyingIdentifier];
  }

  v6 = v5;

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
  v3 = [(SHMediaItem *)self _rawResponseSongsData];

  if (!v3)
  {
    v4 = [(SHMediaItem *)self identifier];
    v5 = [SHMediaItemDaemonConnection fetchRawSongResponseDataUsingMediaItemIdentifier:v4];
    [(SHMediaItem *)self set_rawResponseSongsData:v5];
  }

  return [(SHMediaItem *)self _rawResponseSongsData];
}

- (id)validValueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaItem *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [SHMediaItemPropertyUtilities isShazamKitDefinedMediaItemProperty:v4])
  {
    v7 = 0;
  }

  else
  {
    if (v6)
    {
      if ([SHMediaItemPropertyUtilities isShazamKitDefinedMediaItemProperty:v4])
      {
        [SHMediaItemPropertyUtilities typeForShazamKitProperty:v4];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = MEMORY[0x277CBEAD8];
          v10 = *MEMORY[0x277CBE658];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for %@ is not of the correct type: %@", v4, v6];
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
    v4 = [(SHMediaItem *)self title];
    v5 = objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"([");
    v6 = [v4 rangeOfCharacterFromSet:v5];

    v7 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v8 = [v7 invertedSet];

    v9 = [(SHMediaItem *)self title];
    v10 = v9;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v9 lowercaseString];
      v12 = [v11 componentsSeparatedByCharactersInSet:v8];
      v13 = [v12 componentsJoinedByString:&stru_2845C78F0];
      v14 = self->_fuzzyRepresentation;
      self->_fuzzyRepresentation = v13;
    }

    else
    {
      v11 = [v9 substringToIndex:v6];
      v12 = [v11 lowercaseString];
      v14 = [v12 componentsSeparatedByCharactersInSet:v8];
      v15 = [v14 componentsJoinedByString:&stru_2845C78F0];
      v16 = self->_fuzzyRepresentation;
      self->_fuzzyRepresentation = v15;
    }

    fuzzyRepresentation = self->_fuzzyRepresentation;
  }

  return fuzzyRepresentation;
}

- (BOOL)describesFrequencySkew:(double)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(SHMediaItem *)self frequencySkewRanges];
  v6 = [v5 count];

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(SHMediaItem *)self frequencySkewRanges];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v13 + 1) + 8 * i) contains:a3])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)describesOffset:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(SHMediaItem *)self timeRanges];
  v6 = [v5 count];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(SHMediaItem *)self timeRanges];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      v10 = a3 + 0.01;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v14 + 1) + 8 * i) contains:v10])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)transformedPropertiesFromProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"sh_matchLocationCoordinate_Swift"];
  if ([SHLocationTransformer isValidCoordinateValue:v4])
  {
    v5 = [v3 mutableCopy];
    [v5 setValue:v4 forKey:@"sh_matchLocationCoordinate"];
    [v5 removeObjectForKey:@"sh_matchLocationCoordinate_Swift"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

@end