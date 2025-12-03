@interface _INPBSearchForPhotosIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForPhotosIntent)initWithCoder:(id)coder;
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

@implementation _INPBSearchForPhotosIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  activities = [(_INPBSearchForPhotosIntent *)self activities];
  dictionaryRepresentation = [activities dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"activities"];

  albumName = [(_INPBSearchForPhotosIntent *)self albumName];
  dictionaryRepresentation2 = [albumName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"albumName"];

  dateCreated = [(_INPBSearchForPhotosIntent *)self dateCreated];
  dictionaryRepresentation3 = [dateCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dateCreated"];

  events = [(_INPBSearchForPhotosIntent *)self events];
  dictionaryRepresentation4 = [events dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"events"];

  if (self->_excludedAttributes.count)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchForPhotosIntent excludedAttributesCount](self, "excludedAttributesCount")}];
    if ([(_INPBSearchForPhotosIntent *)self excludedAttributesCount])
    {
      for (i = 0; i < [(_INPBSearchForPhotosIntent *)self excludedAttributesCount]; ++i)
      {
        v14 = self->_excludedAttributes.list[i];
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

              goto LABEL_67;
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
                goto LABEL_66;
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

              goto LABEL_67;
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
                goto LABEL_66;
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

            goto LABEL_67;
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
                goto LABEL_66;
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
              goto LABEL_66;
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

            goto LABEL_67;
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

            goto LABEL_67;
          }

          if (v14 == 306)
          {
            v15 = @"FADE_FILTER";
          }

          else
          {
            if (v14 != 307)
            {
LABEL_66:
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_excludedAttributes.list[i]];
              goto LABEL_67;
            }

            v15 = @"PROCESS_FILTER";
          }
        }

LABEL_67:
        [v12 addObject:v15];
      }
    }

    [dictionary setObject:v12 forKeyedSubscript:@"excludedAttribute"];
  }

  geographicalFeatures = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  dictionaryRepresentation5 = [geographicalFeatures dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"geographicalFeatures"];

  if (self->_includedAttributes.count)
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchForPhotosIntent includedAttributesCount](self, "includedAttributesCount")}];
    if ([(_INPBSearchForPhotosIntent *)self includedAttributesCount])
    {
      for (j = 0; j < [(_INPBSearchForPhotosIntent *)self includedAttributesCount]; ++j)
      {
        v20 = self->_includedAttributes.list[j];
        if (v20 <= 53)
        {
          if (v20 > 13)
          {
            if (v20 > 49)
            {
              if (v20 > 51)
              {
                if (v20 == 52)
                {
                  v21 = @"SQUARE_PHOTO";
                }

                else
                {
                  v21 = @"PANORAMA_PHOTO";
                }
              }

              else if (v20 == 50)
              {
                v21 = @"BURST_PHOTO";
              }

              else
              {
                v21 = @"HDR_PHOTO";
              }

              goto LABEL_135;
            }

            switch(v20)
            {
              case 14:
                v21 = @"SELFIE";
                break;
              case 15:
                v21 = @"FRONT_FACING_CAMERA";
                break;
              case 16:
                v21 = @"SCREENSHOT";
                break;
              default:
                goto LABEL_134;
            }
          }

          else
          {
            if (v20 > 9)
            {
              if (v20 > 11)
              {
                if (v20 == 12)
                {
                  v21 = @"PORTRAIT_ORIENTATION";
                }

                else
                {
                  v21 = @"FAVORITE";
                }
              }

              else if (v20 == 10)
              {
                v21 = @"FLASH";
              }

              else
              {
                v21 = @"LANDSCAPE_ORIENTATION";
              }

              goto LABEL_135;
            }

            switch(v20)
            {
              case 2:
                v21 = @"PHOTO";
                break;
              case 3:
                v21 = @"VIDEO";
                break;
              case 4:
                v21 = @"GIF";
                break;
              default:
                goto LABEL_134;
            }
          }
        }

        else if (v20 <= 299)
        {
          if (v20 <= 56)
          {
            if (v20 == 54)
            {
              v21 = @"PORTRAIT_PHOTO";
            }

            else if (v20 == 55)
            {
              v21 = @"LIVE_PHOTO";
            }

            else
            {
              v21 = @"LOOP_PHOTO";
            }

            goto LABEL_135;
          }

          if (v20 > 79)
          {
            if (v20 == 80)
            {
              v21 = @"TIME_LAPSE_VIDEO";
            }

            else
            {
              if (v20 != 81)
              {
                goto LABEL_134;
              }

              v21 = @"SLOW_MOTION_VIDEO";
            }
          }

          else if (v20 == 57)
          {
            v21 = @"BOUNCE_PHOTO";
          }

          else
          {
            if (v20 != 58)
            {
              goto LABEL_134;
            }

            v21 = @"LONG_EXPOSURE_PHOTO";
          }
        }

        else
        {
          if (v20 <= 303)
          {
            if (v20 > 301)
            {
              if (v20 == 302)
              {
                v21 = @"INSTANT_FILTER";
              }

              else
              {
                v21 = @"TONAL_FILTER";
              }
            }

            else if (v20 == 300)
            {
              v21 = @"NOIR_FILTER";
            }

            else
            {
              v21 = @"CHROME_FILTER";
            }

            goto LABEL_135;
          }

          if (v20 <= 305)
          {
            if (v20 == 304)
            {
              v21 = @"TRANSFER_FILTER";
            }

            else
            {
              v21 = @"MONO_FILTER";
            }

            goto LABEL_135;
          }

          if (v20 == 306)
          {
            v21 = @"FADE_FILTER";
          }

          else
          {
            if (v20 != 307)
            {
LABEL_134:
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_includedAttributes.list[j]];
              goto LABEL_135;
            }

            v21 = @"PROCESS_FILTER";
          }
        }

LABEL_135:
        [v18 addObject:v21];
      }
    }

    [dictionary setObject:v18 forKeyedSubscript:@"includedAttribute"];
  }

  intentMetadata = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  dictionaryRepresentation6 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"intentMetadata"];

  locationCreated = [(_INPBSearchForPhotosIntent *)self locationCreated];
  dictionaryRepresentation7 = [locationCreated dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"locationCreated"];

  memoryName = [(_INPBSearchForPhotosIntent *)self memoryName];
  dictionaryRepresentation8 = [memoryName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"memoryName"];

  peopleInPhoto = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  dictionaryRepresentation9 = [peopleInPhoto dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"peopleInPhoto"];

  places = [(_INPBSearchForPhotosIntent *)self places];
  dictionaryRepresentation10 = [places dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"places"];

  searchTerm = [(_INPBSearchForPhotosIntent *)self searchTerm];
  dictionaryRepresentation11 = [searchTerm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"searchTerm"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBActivityList *)self->_activities hash];
  v4 = [(_INPBString *)self->_albumName hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(_INPBEventList *)self->_events hash];
  v7 = PBRepeatedInt32Hash();
  v8 = v7 ^ [(_INPBGeographicalFeatureList *)self->_geographicalFeatures hash];
  v9 = v6 ^ v8 ^ PBRepeatedInt32Hash();
  v10 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v11 = v10 ^ [(_INPBLocation *)self->_locationCreated hash];
  v12 = v11 ^ [(_INPBString *)self->_memoryName hash];
  v13 = v9 ^ v12 ^ [(_INPBContactList *)self->_peopleInPhoto hash];
  v14 = [(_INPBPlaceList *)self->_places hash];
  return v13 ^ v14 ^ [(_INPBStringList *)self->_searchTerm hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  activities = [(_INPBSearchForPhotosIntent *)self activities];
  activities2 = [equalCopy activities];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  activities3 = [(_INPBSearchForPhotosIntent *)self activities];
  if (activities3)
  {
    v8 = activities3;
    activities4 = [(_INPBSearchForPhotosIntent *)self activities];
    activities5 = [equalCopy activities];
    v11 = [activities4 isEqual:activities5];

    if (!v11)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self albumName];
  activities2 = [equalCopy albumName];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  albumName = [(_INPBSearchForPhotosIntent *)self albumName];
  if (albumName)
  {
    v13 = albumName;
    albumName2 = [(_INPBSearchForPhotosIntent *)self albumName];
    albumName3 = [equalCopy albumName];
    v16 = [albumName2 isEqual:albumName3];

    if (!v16)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self dateCreated];
  activities2 = [equalCopy dateCreated];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  dateCreated = [(_INPBSearchForPhotosIntent *)self dateCreated];
  if (dateCreated)
  {
    v18 = dateCreated;
    dateCreated2 = [(_INPBSearchForPhotosIntent *)self dateCreated];
    dateCreated3 = [equalCopy dateCreated];
    v21 = [dateCreated2 isEqual:dateCreated3];

    if (!v21)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self events];
  activities2 = [equalCopy events];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  events = [(_INPBSearchForPhotosIntent *)self events];
  if (events)
  {
    v23 = events;
    events2 = [(_INPBSearchForPhotosIntent *)self events];
    events3 = [equalCopy events];
    v26 = [events2 isEqual:events3];

    if (!v26)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_59;
  }

  activities = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  activities2 = [equalCopy geographicalFeatures];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  geographicalFeatures = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  if (geographicalFeatures)
  {
    v28 = geographicalFeatures;
    geographicalFeatures2 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
    geographicalFeatures3 = [equalCopy geographicalFeatures];
    v31 = [geographicalFeatures2 isEqual:geographicalFeatures3];

    if (!v31)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_59;
  }

  activities = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  activities2 = [equalCopy intentMetadata];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  intentMetadata = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v33 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v36 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v36)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self locationCreated];
  activities2 = [equalCopy locationCreated];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  locationCreated = [(_INPBSearchForPhotosIntent *)self locationCreated];
  if (locationCreated)
  {
    v38 = locationCreated;
    locationCreated2 = [(_INPBSearchForPhotosIntent *)self locationCreated];
    locationCreated3 = [equalCopy locationCreated];
    v41 = [locationCreated2 isEqual:locationCreated3];

    if (!v41)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self memoryName];
  activities2 = [equalCopy memoryName];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  memoryName = [(_INPBSearchForPhotosIntent *)self memoryName];
  if (memoryName)
  {
    v43 = memoryName;
    memoryName2 = [(_INPBSearchForPhotosIntent *)self memoryName];
    memoryName3 = [equalCopy memoryName];
    v46 = [memoryName2 isEqual:memoryName3];

    if (!v46)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  activities2 = [equalCopy peopleInPhoto];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  peopleInPhoto = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  if (peopleInPhoto)
  {
    v48 = peopleInPhoto;
    peopleInPhoto2 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
    peopleInPhoto3 = [equalCopy peopleInPhoto];
    v51 = [peopleInPhoto2 isEqual:peopleInPhoto3];

    if (!v51)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self places];
  activities2 = [equalCopy places];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_58;
  }

  places = [(_INPBSearchForPhotosIntent *)self places];
  if (places)
  {
    v53 = places;
    places2 = [(_INPBSearchForPhotosIntent *)self places];
    places3 = [equalCopy places];
    v56 = [places2 isEqual:places3];

    if (!v56)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  activities = [(_INPBSearchForPhotosIntent *)self searchTerm];
  activities2 = [equalCopy searchTerm];
  if ((activities != 0) == (activities2 == 0))
  {
LABEL_58:

    goto LABEL_59;
  }

  searchTerm = [(_INPBSearchForPhotosIntent *)self searchTerm];
  if (!searchTerm)
  {

LABEL_62:
    v62 = 1;
    goto LABEL_60;
  }

  v58 = searchTerm;
  searchTerm2 = [(_INPBSearchForPhotosIntent *)self searchTerm];
  searchTerm3 = [equalCopy searchTerm];
  v61 = [searchTerm2 isEqual:searchTerm3];

  if (v61)
  {
    goto LABEL_62;
  }

LABEL_59:
  v62 = 0;
LABEL_60:

  return v62;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForPhotosIntent allocWithZone:](_INPBSearchForPhotosIntent init];
  v6 = [(_INPBActivityList *)self->_activities copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setActivities:v6];

  v7 = [(_INPBString *)self->_albumName copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setAlbumName:v7];

  v8 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setDateCreated:v8];

  v9 = [(_INPBEventList *)self->_events copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setEvents:v9];

  PBRepeatedInt32Copy();
  v10 = [(_INPBGeographicalFeatureList *)self->_geographicalFeatures copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setGeographicalFeatures:v10];

  PBRepeatedInt32Copy();
  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setIntentMetadata:v11];

  v12 = [(_INPBLocation *)self->_locationCreated copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setLocationCreated:v12];

  v13 = [(_INPBString *)self->_memoryName copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setMemoryName:v13];

  v14 = [(_INPBContactList *)self->_peopleInPhoto copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setPeopleInPhoto:v14];

  v15 = [(_INPBPlaceList *)self->_places copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setPlaces:v15];

  v16 = [(_INPBStringList *)self->_searchTerm copyWithZone:zone];
  [(_INPBSearchForPhotosIntent *)v5 setSearchTerm:v16];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForPhotosIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForPhotosIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForPhotosIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBSearchForPhotosIntent *)self clearExcludedAttributes];
  [(_INPBSearchForPhotosIntent *)self clearIncludedAttributes];
  v3.receiver = self;
  v3.super_class = _INPBSearchForPhotosIntent;
  [(_INPBSearchForPhotosIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  activities = [(_INPBSearchForPhotosIntent *)self activities];

  if (activities)
  {
    activities2 = [(_INPBSearchForPhotosIntent *)self activities];
    PBDataWriterWriteSubmessage();
  }

  albumName = [(_INPBSearchForPhotosIntent *)self albumName];

  if (albumName)
  {
    albumName2 = [(_INPBSearchForPhotosIntent *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  dateCreated = [(_INPBSearchForPhotosIntent *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(_INPBSearchForPhotosIntent *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  events = [(_INPBSearchForPhotosIntent *)self events];

  if (events)
  {
    events2 = [(_INPBSearchForPhotosIntent *)self events];
    PBDataWriterWriteSubmessage();
  }

  if (self->_excludedAttributes.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_excludedAttributes.list[v12];
      PBDataWriterWriteInt32Field();
      ++v12;
    }

    while (v12 < self->_excludedAttributes.count);
  }

  geographicalFeatures = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];

  if (geographicalFeatures)
  {
    geographicalFeatures2 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
    PBDataWriterWriteSubmessage();
  }

  if (self->_includedAttributes.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_includedAttributes.list[v16];
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_includedAttributes.count);
  }

  intentMetadata = [(_INPBSearchForPhotosIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  locationCreated = [(_INPBSearchForPhotosIntent *)self locationCreated];

  if (locationCreated)
  {
    locationCreated2 = [(_INPBSearchForPhotosIntent *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  memoryName = [(_INPBSearchForPhotosIntent *)self memoryName];

  if (memoryName)
  {
    memoryName2 = [(_INPBSearchForPhotosIntent *)self memoryName];
    PBDataWriterWriteSubmessage();
  }

  peopleInPhoto = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];

  if (peopleInPhoto)
  {
    peopleInPhoto2 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
    PBDataWriterWriteSubmessage();
  }

  places = [(_INPBSearchForPhotosIntent *)self places];

  if (places)
  {
    places2 = [(_INPBSearchForPhotosIntent *)self places];
    PBDataWriterWriteSubmessage();
  }

  searchTerm = [(_INPBSearchForPhotosIntent *)self searchTerm];

  v29 = toCopy;
  if (searchTerm)
  {
    searchTerm2 = [(_INPBSearchForPhotosIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();

    v29 = toCopy;
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