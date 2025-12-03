@interface _INPBStartPhotoPlaybackIntent
- (BOOL)isEqual:(id)equal;
- (_INPBStartPhotoPlaybackIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsExcludedAttributes:(id)attributes;
- (int)StringAsIncludedAttributes:(id)attributes;
- (unint64_t)hash;
- (void)addExcludedAttribute:(int)attribute;
- (void)addIncludedAttribute:(int)attribute;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBStartPhotoPlaybackIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  albumName = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  dictionaryRepresentation = [albumName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"albumName"];

  dateCreated = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  dictionaryRepresentation2 = [dateCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dateCreated"];

  if (self->_excludedAttributes.count)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBStartPhotoPlaybackIntent excludedAttributesCount](self, "excludedAttributesCount")}];
    if ([(_INPBStartPhotoPlaybackIntent *)self excludedAttributesCount])
    {
      for (i = 0; i < [(_INPBStartPhotoPlaybackIntent *)self excludedAttributesCount]; ++i)
      {
        v10 = self->_excludedAttributes.list[i];
        if (v10 <= 53)
        {
          if (v10 > 13)
          {
            if (v10 > 49)
            {
              if (v10 > 51)
              {
                if (v10 == 52)
                {
                  v11 = @"SQUARE_PHOTO";
                }

                else
                {
                  v11 = @"PANORAMA_PHOTO";
                }
              }

              else if (v10 == 50)
              {
                v11 = @"BURST_PHOTO";
              }

              else
              {
                v11 = @"HDR_PHOTO";
              }

              goto LABEL_67;
            }

            switch(v10)
            {
              case 14:
                v11 = @"SELFIE";
                break;
              case 15:
                v11 = @"FRONT_FACING_CAMERA";
                break;
              case 16:
                v11 = @"SCREENSHOT";
                break;
              default:
                goto LABEL_66;
            }
          }

          else
          {
            if (v10 > 9)
            {
              if (v10 > 11)
              {
                if (v10 == 12)
                {
                  v11 = @"PORTRAIT_ORIENTATION";
                }

                else
                {
                  v11 = @"FAVORITE";
                }
              }

              else if (v10 == 10)
              {
                v11 = @"FLASH";
              }

              else
              {
                v11 = @"LANDSCAPE_ORIENTATION";
              }

              goto LABEL_67;
            }

            switch(v10)
            {
              case 2:
                v11 = @"PHOTO";
                break;
              case 3:
                v11 = @"VIDEO";
                break;
              case 4:
                v11 = @"GIF";
                break;
              default:
                goto LABEL_66;
            }
          }
        }

        else if (v10 <= 299)
        {
          if (v10 <= 56)
          {
            if (v10 == 54)
            {
              v11 = @"PORTRAIT_PHOTO";
            }

            else if (v10 == 55)
            {
              v11 = @"LIVE_PHOTO";
            }

            else
            {
              v11 = @"LOOP_PHOTO";
            }

            goto LABEL_67;
          }

          if (v10 > 79)
          {
            if (v10 == 80)
            {
              v11 = @"TIME_LAPSE_VIDEO";
            }

            else
            {
              if (v10 != 81)
              {
                goto LABEL_66;
              }

              v11 = @"SLOW_MOTION_VIDEO";
            }
          }

          else if (v10 == 57)
          {
            v11 = @"BOUNCE_PHOTO";
          }

          else
          {
            if (v10 != 58)
            {
              goto LABEL_66;
            }

            v11 = @"LONG_EXPOSURE_PHOTO";
          }
        }

        else
        {
          if (v10 <= 303)
          {
            if (v10 > 301)
            {
              if (v10 == 302)
              {
                v11 = @"INSTANT_FILTER";
              }

              else
              {
                v11 = @"TONAL_FILTER";
              }
            }

            else if (v10 == 300)
            {
              v11 = @"NOIR_FILTER";
            }

            else
            {
              v11 = @"CHROME_FILTER";
            }

            goto LABEL_67;
          }

          if (v10 <= 305)
          {
            if (v10 == 304)
            {
              v11 = @"TRANSFER_FILTER";
            }

            else
            {
              v11 = @"MONO_FILTER";
            }

            goto LABEL_67;
          }

          if (v10 == 306)
          {
            v11 = @"FADE_FILTER";
          }

          else
          {
            if (v10 != 307)
            {
LABEL_66:
              v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_excludedAttributes.list[i]];
              goto LABEL_67;
            }

            v11 = @"PROCESS_FILTER";
          }
        }

LABEL_67:
        [v8 addObject:v11];
      }
    }

    [dictionary setObject:v8 forKeyedSubscript:@"excludedAttribute"];
  }

  if (self->_includedAttributes.count)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBStartPhotoPlaybackIntent includedAttributesCount](self, "includedAttributesCount")}];
    if ([(_INPBStartPhotoPlaybackIntent *)self includedAttributesCount])
    {
      for (j = 0; j < [(_INPBStartPhotoPlaybackIntent *)self includedAttributesCount]; ++j)
      {
        v14 = self->_includedAttributes.list[j];
        if (v14 <= 53)
        {
          if (v14 > 13)
          {
            if (v14 > 49)
            {
              if (v14 > 51)
              {
                if (v14 == 52)
                {
                  v15 = @"SQUARE_PHOTO";
                }

                else
                {
                  v15 = @"PANORAMA_PHOTO";
                }
              }

              else if (v14 == 50)
              {
                v15 = @"BURST_PHOTO";
              }

              else
              {
                v15 = @"HDR_PHOTO";
              }

              goto LABEL_135;
            }

            switch(v14)
            {
              case 14:
                v15 = @"SELFIE";
                break;
              case 15:
                v15 = @"FRONT_FACING_CAMERA";
                break;
              case 16:
                v15 = @"SCREENSHOT";
                break;
              default:
                goto LABEL_134;
            }
          }

          else
          {
            if (v14 > 9)
            {
              if (v14 > 11)
              {
                if (v14 == 12)
                {
                  v15 = @"PORTRAIT_ORIENTATION";
                }

                else
                {
                  v15 = @"FAVORITE";
                }
              }

              else if (v14 == 10)
              {
                v15 = @"FLASH";
              }

              else
              {
                v15 = @"LANDSCAPE_ORIENTATION";
              }

              goto LABEL_135;
            }

            switch(v14)
            {
              case 2:
                v15 = @"PHOTO";
                break;
              case 3:
                v15 = @"VIDEO";
                break;
              case 4:
                v15 = @"GIF";
                break;
              default:
                goto LABEL_134;
            }
          }
        }

        else if (v14 <= 299)
        {
          if (v14 <= 56)
          {
            if (v14 == 54)
            {
              v15 = @"PORTRAIT_PHOTO";
            }

            else if (v14 == 55)
            {
              v15 = @"LIVE_PHOTO";
            }

            else
            {
              v15 = @"LOOP_PHOTO";
            }

            goto LABEL_135;
          }

          if (v14 > 79)
          {
            if (v14 == 80)
            {
              v15 = @"TIME_LAPSE_VIDEO";
            }

            else
            {
              if (v14 != 81)
              {
                goto LABEL_134;
              }

              v15 = @"SLOW_MOTION_VIDEO";
            }
          }

          else if (v14 == 57)
          {
            v15 = @"BOUNCE_PHOTO";
          }

          else
          {
            if (v14 != 58)
            {
              goto LABEL_134;
            }

            v15 = @"LONG_EXPOSURE_PHOTO";
          }
        }

        else
        {
          if (v14 <= 303)
          {
            if (v14 > 301)
            {
              if (v14 == 302)
              {
                v15 = @"INSTANT_FILTER";
              }

              else
              {
                v15 = @"TONAL_FILTER";
              }
            }

            else if (v14 == 300)
            {
              v15 = @"NOIR_FILTER";
            }

            else
            {
              v15 = @"CHROME_FILTER";
            }

            goto LABEL_135;
          }

          if (v14 <= 305)
          {
            if (v14 == 304)
            {
              v15 = @"TRANSFER_FILTER";
            }

            else
            {
              v15 = @"MONO_FILTER";
            }

            goto LABEL_135;
          }

          if (v14 == 306)
          {
            v15 = @"FADE_FILTER";
          }

          else
          {
            if (v14 != 307)
            {
LABEL_134:
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_includedAttributes.list[j]];
              goto LABEL_135;
            }

            v15 = @"PROCESS_FILTER";
          }
        }

LABEL_135:
        [v12 addObject:v15];
      }
    }

    [dictionary setObject:v12 forKeyedSubscript:@"includedAttribute"];
  }

  intentMetadata = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  locationCreated = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  dictionaryRepresentation4 = [locationCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"locationCreated"];

  peopleInPhoto = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  dictionaryRepresentation5 = [peopleInPhoto dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"peopleInPhoto"];

  searchTerm = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
  dictionaryRepresentation6 = [searchTerm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"searchTerm"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_albumName hash];
  v4 = [(_INPBDateTimeRange *)self->_dateCreated hash]^ v3;
  v5 = PBRepeatedInt32Hash();
  v6 = v5 ^ PBRepeatedInt32Hash();
  v7 = v4 ^ v6 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v8 = [(_INPBLocation *)self->_locationCreated hash];
  v9 = v8 ^ [(_INPBContactList *)self->_peopleInPhoto hash];
  return v7 ^ v9 ^ [(_INPBStringList *)self->_searchTerm hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  albumName2 = [equalCopy albumName];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_33;
  }

  albumName3 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  if (albumName3)
  {
    v8 = albumName3;
    albumName4 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
    albumName5 = [equalCopy albumName];
    v11 = [albumName4 isEqual:albumName5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  albumName2 = [equalCopy dateCreated];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_33;
  }

  dateCreated = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  if (dateCreated)
  {
    v13 = dateCreated;
    dateCreated2 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
    dateCreated3 = [equalCopy dateCreated];
    v16 = [dateCreated2 isEqual:dateCreated3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_34;
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  albumName2 = [equalCopy intentMetadata];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_33;
  }

  intentMetadata = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  albumName2 = [equalCopy locationCreated];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_33;
  }

  locationCreated = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  if (locationCreated)
  {
    v23 = locationCreated;
    locationCreated2 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
    locationCreated3 = [equalCopy locationCreated];
    v26 = [locationCreated2 isEqual:locationCreated3];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  albumName2 = [equalCopy peopleInPhoto];
  if ((albumName != 0) == (albumName2 == 0))
  {
    goto LABEL_33;
  }

  peopleInPhoto = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  if (peopleInPhoto)
  {
    v28 = peopleInPhoto;
    peopleInPhoto2 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
    peopleInPhoto3 = [equalCopy peopleInPhoto];
    v31 = [peopleInPhoto2 isEqual:peopleInPhoto3];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  albumName = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
  albumName2 = [equalCopy searchTerm];
  if ((albumName != 0) != (albumName2 == 0))
  {
    searchTerm = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    if (!searchTerm)
    {

LABEL_37:
      v37 = 1;
      goto LABEL_35;
    }

    v33 = searchTerm;
    searchTerm2 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    searchTerm3 = [equalCopy searchTerm];
    v36 = [searchTerm2 isEqual:searchTerm3];

    if (v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_33:
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBStartPhotoPlaybackIntent allocWithZone:](_INPBStartPhotoPlaybackIntent init];
  v6 = [(_INPBString *)self->_albumName copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setAlbumName:v6];

  v7 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setDateCreated:v7];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBLocation *)self->_locationCreated copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setLocationCreated:v9];

  v10 = [(_INPBContactList *)self->_peopleInPhoto copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setPeopleInPhoto:v10];

  v11 = [(_INPBStringList *)self->_searchTerm copyWithZone:zone];
  [(_INPBStartPhotoPlaybackIntent *)v5 setSearchTerm:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBStartPhotoPlaybackIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBStartPhotoPlaybackIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBStartPhotoPlaybackIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBStartPhotoPlaybackIntent *)self clearExcludedAttributes];
  [(_INPBStartPhotoPlaybackIntent *)self clearIncludedAttributes];
  v3.receiver = self;
  v3.super_class = _INPBStartPhotoPlaybackIntent;
  [(_INPBStartPhotoPlaybackIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  albumName = [(_INPBStartPhotoPlaybackIntent *)self albumName];

  if (albumName)
  {
    albumName2 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  dateCreated = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  if (self->_excludedAttributes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_excludedAttributes.list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < self->_excludedAttributes.count);
  }

  if (self->_includedAttributes.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_includedAttributes.list[v10];
      PBDataWriterWriteInt32Field();
      ++v10;
    }

    while (v10 < self->_includedAttributes.count);
  }

  intentMetadata = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  locationCreated = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];

  if (locationCreated)
  {
    locationCreated2 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  peopleInPhoto = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];

  if (peopleInPhoto)
  {
    peopleInPhoto2 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
    PBDataWriterWriteSubmessage();
  }

  searchTerm = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];

  v19 = toCopy;
  if (searchTerm)
  {
    searchTerm2 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (int)StringAsIncludedAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"PHOTO"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"VIDEO"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"GIF"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"FLASH"])
  {
    v4 = 10;
  }

  else if ([attributesCopy isEqualToString:@"LANDSCAPE_ORIENTATION"])
  {
    v4 = 11;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_ORIENTATION"])
  {
    v4 = 12;
  }

  else if ([attributesCopy isEqualToString:@"FAVORITE"])
  {
    v4 = 13;
  }

  else if ([attributesCopy isEqualToString:@"SELFIE"])
  {
    v4 = 14;
  }

  else if ([attributesCopy isEqualToString:@"FRONT_FACING_CAMERA"])
  {
    v4 = 15;
  }

  else if ([attributesCopy isEqualToString:@"SCREENSHOT"])
  {
    v4 = 16;
  }

  else if ([attributesCopy isEqualToString:@"BURST_PHOTO"])
  {
    v4 = 50;
  }

  else if ([attributesCopy isEqualToString:@"HDR_PHOTO"])
  {
    v4 = 51;
  }

  else if ([attributesCopy isEqualToString:@"SQUARE_PHOTO"])
  {
    v4 = 52;
  }

  else if ([attributesCopy isEqualToString:@"PANORAMA_PHOTO"])
  {
    v4 = 53;
  }

  else if ([attributesCopy isEqualToString:@"TIME_LAPSE_VIDEO"])
  {
    v4 = 80;
  }

  else if ([attributesCopy isEqualToString:@"SLOW_MOTION_VIDEO"])
  {
    v4 = 81;
  }

  else if ([attributesCopy isEqualToString:@"NOIR_FILTER"])
  {
    v4 = 300;
  }

  else if ([attributesCopy isEqualToString:@"CHROME_FILTER"])
  {
    v4 = 301;
  }

  else if ([attributesCopy isEqualToString:@"INSTANT_FILTER"])
  {
    v4 = 302;
  }

  else if ([attributesCopy isEqualToString:@"TONAL_FILTER"])
  {
    v4 = 303;
  }

  else if ([attributesCopy isEqualToString:@"TRANSFER_FILTER"])
  {
    v4 = 304;
  }

  else if ([attributesCopy isEqualToString:@"MONO_FILTER"])
  {
    v4 = 305;
  }

  else if ([attributesCopy isEqualToString:@"FADE_FILTER"])
  {
    v4 = 306;
  }

  else if ([attributesCopy isEqualToString:@"PROCESS_FILTER"])
  {
    v4 = 307;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_PHOTO"])
  {
    v4 = 54;
  }

  else if ([attributesCopy isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 55;
  }

  else if ([attributesCopy isEqualToString:@"LOOP_PHOTO"])
  {
    v4 = 56;
  }

  else if ([attributesCopy isEqualToString:@"BOUNCE_PHOTO"])
  {
    v4 = 57;
  }

  else if ([attributesCopy isEqualToString:@"LONG_EXPOSURE_PHOTO"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addIncludedAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsExcludedAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"PHOTO"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"VIDEO"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"GIF"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"FLASH"])
  {
    v4 = 10;
  }

  else if ([attributesCopy isEqualToString:@"LANDSCAPE_ORIENTATION"])
  {
    v4 = 11;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_ORIENTATION"])
  {
    v4 = 12;
  }

  else if ([attributesCopy isEqualToString:@"FAVORITE"])
  {
    v4 = 13;
  }

  else if ([attributesCopy isEqualToString:@"SELFIE"])
  {
    v4 = 14;
  }

  else if ([attributesCopy isEqualToString:@"FRONT_FACING_CAMERA"])
  {
    v4 = 15;
  }

  else if ([attributesCopy isEqualToString:@"SCREENSHOT"])
  {
    v4 = 16;
  }

  else if ([attributesCopy isEqualToString:@"BURST_PHOTO"])
  {
    v4 = 50;
  }

  else if ([attributesCopy isEqualToString:@"HDR_PHOTO"])
  {
    v4 = 51;
  }

  else if ([attributesCopy isEqualToString:@"SQUARE_PHOTO"])
  {
    v4 = 52;
  }

  else if ([attributesCopy isEqualToString:@"PANORAMA_PHOTO"])
  {
    v4 = 53;
  }

  else if ([attributesCopy isEqualToString:@"TIME_LAPSE_VIDEO"])
  {
    v4 = 80;
  }

  else if ([attributesCopy isEqualToString:@"SLOW_MOTION_VIDEO"])
  {
    v4 = 81;
  }

  else if ([attributesCopy isEqualToString:@"NOIR_FILTER"])
  {
    v4 = 300;
  }

  else if ([attributesCopy isEqualToString:@"CHROME_FILTER"])
  {
    v4 = 301;
  }

  else if ([attributesCopy isEqualToString:@"INSTANT_FILTER"])
  {
    v4 = 302;
  }

  else if ([attributesCopy isEqualToString:@"TONAL_FILTER"])
  {
    v4 = 303;
  }

  else if ([attributesCopy isEqualToString:@"TRANSFER_FILTER"])
  {
    v4 = 304;
  }

  else if ([attributesCopy isEqualToString:@"MONO_FILTER"])
  {
    v4 = 305;
  }

  else if ([attributesCopy isEqualToString:@"FADE_FILTER"])
  {
    v4 = 306;
  }

  else if ([attributesCopy isEqualToString:@"PROCESS_FILTER"])
  {
    v4 = 307;
  }

  else if ([attributesCopy isEqualToString:@"PORTRAIT_PHOTO"])
  {
    v4 = 54;
  }

  else if ([attributesCopy isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 55;
  }

  else if ([attributesCopy isEqualToString:@"LOOP_PHOTO"])
  {
    v4 = 56;
  }

  else if ([attributesCopy isEqualToString:@"BOUNCE_PHOTO"])
  {
    v4 = 57;
  }

  else if ([attributesCopy isEqualToString:@"LONG_EXPOSURE_PHOTO"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addExcludedAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end