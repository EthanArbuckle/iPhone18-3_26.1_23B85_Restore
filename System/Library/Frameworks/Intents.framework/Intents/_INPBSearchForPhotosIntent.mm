@interface _INPBSearchForPhotosIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForPhotosIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsExcludedAttributes:(id)a3;
- (int)StringAsIncludedAttributes:(id)a3;
- (unint64_t)hash;
- (void)addExcludedAttribute:(int)a3;
- (void)addIncludedAttribute:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForPhotosIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSearchForPhotosIntent *)self activities];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"activities"];

  v6 = [(_INPBSearchForPhotosIntent *)self albumName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"albumName"];

  v8 = [(_INPBSearchForPhotosIntent *)self dateCreated];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dateCreated"];

  v10 = [(_INPBSearchForPhotosIntent *)self events];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"events"];

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

    [v3 setObject:v12 forKeyedSubscript:@"excludedAttribute"];
  }

  v16 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"geographicalFeatures"];

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

    [v3 setObject:v18 forKeyedSubscript:@"includedAttribute"];
  }

  v22 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"intentMetadata"];

  v24 = [(_INPBSearchForPhotosIntent *)self locationCreated];
  v25 = [v24 dictionaryRepresentation];
  [v3 setObject:v25 forKeyedSubscript:@"locationCreated"];

  v26 = [(_INPBSearchForPhotosIntent *)self memoryName];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"memoryName"];

  v28 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"peopleInPhoto"];

  v30 = [(_INPBSearchForPhotosIntent *)self places];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"places"];

  v32 = [(_INPBSearchForPhotosIntent *)self searchTerm];
  v33 = [v32 dictionaryRepresentation];
  [v3 setObject:v33 forKeyedSubscript:@"searchTerm"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  v5 = [(_INPBSearchForPhotosIntent *)self activities];
  v6 = [v4 activities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v7 = [(_INPBSearchForPhotosIntent *)self activities];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForPhotosIntent *)self activities];
    v10 = [v4 activities];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v12 = [(_INPBSearchForPhotosIntent *)self albumName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchForPhotosIntent *)self albumName];
    v15 = [v4 albumName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self dateCreated];
  v6 = [v4 dateCreated];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v17 = [(_INPBSearchForPhotosIntent *)self dateCreated];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSearchForPhotosIntent *)self dateCreated];
    v20 = [v4 dateCreated];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self events];
  v6 = [v4 events];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v22 = [(_INPBSearchForPhotosIntent *)self events];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSearchForPhotosIntent *)self events];
    v25 = [v4 events];
    v26 = [v24 isEqual:v25];

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

  v5 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  v6 = [v4 geographicalFeatures];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v27 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
    v30 = [v4 geographicalFeatures];
    v31 = [v29 isEqual:v30];

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

  v5 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v32 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
    v35 = [v4 intentMetadata];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self locationCreated];
  v6 = [v4 locationCreated];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v37 = [(_INPBSearchForPhotosIntent *)self locationCreated];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBSearchForPhotosIntent *)self locationCreated];
    v40 = [v4 locationCreated];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self memoryName];
  v6 = [v4 memoryName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v42 = [(_INPBSearchForPhotosIntent *)self memoryName];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBSearchForPhotosIntent *)self memoryName];
    v45 = [v4 memoryName];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  v6 = [v4 peopleInPhoto];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v47 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
    v50 = [v4 peopleInPhoto];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self places];
  v6 = [v4 places];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v52 = [(_INPBSearchForPhotosIntent *)self places];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBSearchForPhotosIntent *)self places];
    v55 = [v4 places];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForPhotosIntent *)self searchTerm];
  v6 = [v4 searchTerm];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_58:

    goto LABEL_59;
  }

  v57 = [(_INPBSearchForPhotosIntent *)self searchTerm];
  if (!v57)
  {

LABEL_62:
    v62 = 1;
    goto LABEL_60;
  }

  v58 = v57;
  v59 = [(_INPBSearchForPhotosIntent *)self searchTerm];
  v60 = [v4 searchTerm];
  v61 = [v59 isEqual:v60];

  if (v61)
  {
    goto LABEL_62;
  }

LABEL_59:
  v62 = 0;
LABEL_60:

  return v62;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForPhotosIntent allocWithZone:](_INPBSearchForPhotosIntent init];
  v6 = [(_INPBActivityList *)self->_activities copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setActivities:v6];

  v7 = [(_INPBString *)self->_albumName copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setAlbumName:v7];

  v8 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setDateCreated:v8];

  v9 = [(_INPBEventList *)self->_events copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setEvents:v9];

  PBRepeatedInt32Copy();
  v10 = [(_INPBGeographicalFeatureList *)self->_geographicalFeatures copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setGeographicalFeatures:v10];

  PBRepeatedInt32Copy();
  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setIntentMetadata:v11];

  v12 = [(_INPBLocation *)self->_locationCreated copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setLocationCreated:v12];

  v13 = [(_INPBString *)self->_memoryName copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setMemoryName:v13];

  v14 = [(_INPBContactList *)self->_peopleInPhoto copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setPeopleInPhoto:v14];

  v15 = [(_INPBPlaceList *)self->_places copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setPlaces:v15];

  v16 = [(_INPBStringList *)self->_searchTerm copyWithZone:a3];
  [(_INPBSearchForPhotosIntent *)v5 setSearchTerm:v16];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForPhotosIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForPhotosIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForPhotosIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBSearchForPhotosIntent *)self clearExcludedAttributes];
  [(_INPBSearchForPhotosIntent *)self clearIncludedAttributes];
  v3.receiver = self;
  v3.super_class = _INPBSearchForPhotosIntent;
  [(_INPBSearchForPhotosIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v31 = a3;
  v4 = [(_INPBSearchForPhotosIntent *)self activities];

  if (v4)
  {
    v5 = [(_INPBSearchForPhotosIntent *)self activities];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSearchForPhotosIntent *)self albumName];

  if (v6)
  {
    v7 = [(_INPBSearchForPhotosIntent *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSearchForPhotosIntent *)self dateCreated];

  if (v8)
  {
    v9 = [(_INPBSearchForPhotosIntent *)self dateCreated];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSearchForPhotosIntent *)self events];

  if (v10)
  {
    v11 = [(_INPBSearchForPhotosIntent *)self events];
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

  v14 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];

  if (v14)
  {
    v15 = [(_INPBSearchForPhotosIntent *)self geographicalFeatures];
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

  v18 = [(_INPBSearchForPhotosIntent *)self intentMetadata];

  if (v18)
  {
    v19 = [(_INPBSearchForPhotosIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_INPBSearchForPhotosIntent *)self locationCreated];

  if (v20)
  {
    v21 = [(_INPBSearchForPhotosIntent *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_INPBSearchForPhotosIntent *)self memoryName];

  if (v22)
  {
    v23 = [(_INPBSearchForPhotosIntent *)self memoryName];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];

  if (v24)
  {
    v25 = [(_INPBSearchForPhotosIntent *)self peopleInPhoto];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_INPBSearchForPhotosIntent *)self places];

  if (v26)
  {
    v27 = [(_INPBSearchForPhotosIntent *)self places];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_INPBSearchForPhotosIntent *)self searchTerm];

  v29 = v31;
  if (v28)
  {
    v30 = [(_INPBSearchForPhotosIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();

    v29 = v31;
  }
}

- (int)StringAsIncludedAttributes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHOTO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GIF"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FLASH"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LANDSCAPE_ORIENTATION"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PORTRAIT_ORIENTATION"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"FAVORITE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SELFIE"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"FRONT_FACING_CAMERA"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SCREENSHOT"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"BURST_PHOTO"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"HDR_PHOTO"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"SQUARE_PHOTO"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"PANORAMA_PHOTO"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"TIME_LAPSE_VIDEO"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"SLOW_MOTION_VIDEO"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"NOIR_FILTER"])
  {
    v4 = 300;
  }

  else if ([v3 isEqualToString:@"CHROME_FILTER"])
  {
    v4 = 301;
  }

  else if ([v3 isEqualToString:@"INSTANT_FILTER"])
  {
    v4 = 302;
  }

  else if ([v3 isEqualToString:@"TONAL_FILTER"])
  {
    v4 = 303;
  }

  else if ([v3 isEqualToString:@"TRANSFER_FILTER"])
  {
    v4 = 304;
  }

  else if ([v3 isEqualToString:@"MONO_FILTER"])
  {
    v4 = 305;
  }

  else if ([v3 isEqualToString:@"FADE_FILTER"])
  {
    v4 = 306;
  }

  else if ([v3 isEqualToString:@"PROCESS_FILTER"])
  {
    v4 = 307;
  }

  else if ([v3 isEqualToString:@"PORTRAIT_PHOTO"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"LOOP_PHOTO"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"BOUNCE_PHOTO"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"LONG_EXPOSURE_PHOTO"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addIncludedAttribute:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsExcludedAttributes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHOTO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GIF"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FLASH"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LANDSCAPE_ORIENTATION"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PORTRAIT_ORIENTATION"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"FAVORITE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SELFIE"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"FRONT_FACING_CAMERA"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SCREENSHOT"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"BURST_PHOTO"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"HDR_PHOTO"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"SQUARE_PHOTO"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"PANORAMA_PHOTO"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"TIME_LAPSE_VIDEO"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"SLOW_MOTION_VIDEO"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"NOIR_FILTER"])
  {
    v4 = 300;
  }

  else if ([v3 isEqualToString:@"CHROME_FILTER"])
  {
    v4 = 301;
  }

  else if ([v3 isEqualToString:@"INSTANT_FILTER"])
  {
    v4 = 302;
  }

  else if ([v3 isEqualToString:@"TONAL_FILTER"])
  {
    v4 = 303;
  }

  else if ([v3 isEqualToString:@"TRANSFER_FILTER"])
  {
    v4 = 304;
  }

  else if ([v3 isEqualToString:@"MONO_FILTER"])
  {
    v4 = 305;
  }

  else if ([v3 isEqualToString:@"FADE_FILTER"])
  {
    v4 = 306;
  }

  else if ([v3 isEqualToString:@"PROCESS_FILTER"])
  {
    v4 = 307;
  }

  else if ([v3 isEqualToString:@"PORTRAIT_PHOTO"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"LOOP_PHOTO"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"BOUNCE_PHOTO"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"LONG_EXPOSURE_PHOTO"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)addExcludedAttribute:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end