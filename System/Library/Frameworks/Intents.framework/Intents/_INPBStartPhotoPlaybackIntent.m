@interface _INPBStartPhotoPlaybackIntent
- (BOOL)isEqual:(id)a3;
- (_INPBStartPhotoPlaybackIntent)initWithCoder:(id)a3;
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

@implementation _INPBStartPhotoPlaybackIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"albumName"];

  v6 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"dateCreated"];

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

    [v3 setObject:v8 forKeyedSubscript:@"excludedAttribute"];
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

    [v3 setObject:v12 forKeyedSubscript:@"includedAttribute"];
  }

  v16 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"intentMetadata"];

  v18 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"locationCreated"];

  v20 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"peopleInPhoto"];

  v22 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"searchTerm"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
    v10 = [v4 albumName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  v6 = [v4 dateCreated];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
    v15 = [v4 dateCreated];
    v16 = [v14 isEqual:v15];

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

  v5 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  v6 = [v4 locationCreated];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
    v25 = [v4 locationCreated];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  v6 = [v4 peopleInPhoto];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v27 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
    v30 = [v4 peopleInPhoto];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
  v6 = [v4 searchTerm];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    if (!v32)
    {

LABEL_37:
      v37 = 1;
      goto LABEL_35;
    }

    v33 = v32;
    v34 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    v35 = [v4 searchTerm];
    v36 = [v34 isEqual:v35];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBStartPhotoPlaybackIntent allocWithZone:](_INPBStartPhotoPlaybackIntent init];
  v6 = [(_INPBString *)self->_albumName copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setAlbumName:v6];

  v7 = [(_INPBDateTimeRange *)self->_dateCreated copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setDateCreated:v7];

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBLocation *)self->_locationCreated copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setLocationCreated:v9];

  v10 = [(_INPBContactList *)self->_peopleInPhoto copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setPeopleInPhoto:v10];

  v11 = [(_INPBStringList *)self->_searchTerm copyWithZone:a3];
  [(_INPBStartPhotoPlaybackIntent *)v5 setSearchTerm:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBStartPhotoPlaybackIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBStartPhotoPlaybackIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBStartPhotoPlaybackIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBStartPhotoPlaybackIntent *)self clearExcludedAttributes];
  [(_INPBStartPhotoPlaybackIntent *)self clearIncludedAttributes];
  v3.receiver = self;
  v3.super_class = _INPBStartPhotoPlaybackIntent;
  [(_INPBStartPhotoPlaybackIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(_INPBStartPhotoPlaybackIntent *)self albumName];

  if (v4)
  {
    v5 = [(_INPBStartPhotoPlaybackIntent *)self albumName];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];

  if (v6)
  {
    v7 = [(_INPBStartPhotoPlaybackIntent *)self dateCreated];
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

  v12 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];

  if (v12)
  {
    v13 = [(_INPBStartPhotoPlaybackIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];

  if (v14)
  {
    v15 = [(_INPBStartPhotoPlaybackIntent *)self locationCreated];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];

  if (v16)
  {
    v17 = [(_INPBStartPhotoPlaybackIntent *)self peopleInPhoto];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];

  v19 = v21;
  if (v18)
  {
    v20 = [(_INPBStartPhotoPlaybackIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();

    v19 = v21;
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