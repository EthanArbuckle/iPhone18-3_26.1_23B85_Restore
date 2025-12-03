@interface MPMediaPropertyPredicate
+ (MPMediaPropertyPredicate)predicateWithValue:(id)value forProperty:(NSString *)property comparisonType:(MPMediaPredicateComparison)comparisonType;
- (BOOL)isEqual:(id)equal;
- (MPMediaPropertyPredicate)initWithCoder:(id)coder;
- (MPMediaPropertyPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library;
- (NSString)description;
- (id)ML3PredicateForContainer;
- (id)ML3PredicateForTrack;
- (id)_ML3PredicateForML3EntityProperty:(id)property;
- (id)descriptionOfValue:(id)value forProperty:(id)property;
- (id)protobufferEncodableObjectFromLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
- (void)setProperty:(id)property;
- (void)setValue:(id)value;
@end

@implementation MPMediaPropertyPredicate

- (id)ML3PredicateForContainer
{
  v3 = MEMORY[0x1E69B34A0];
  property = [(MPMediaPropertyPredicate *)self property];
  v5 = [v3 propertyForMPMediaEntityProperty:property];

  v6 = [(MPMediaPropertyPredicate *)self _ML3PredicateForML3EntityProperty:v5];

  return v6;
}

- (id)ML3PredicateForTrack
{
  v3 = MEMORY[0x1E69B3538];
  property = [(MPMediaPropertyPredicate *)self property];
  v5 = [v3 propertyForMPMediaEntityProperty:property];

  v6 = [(MPMediaPropertyPredicate *)self _ML3PredicateForML3EntityProperty:v5];

  return v6;
}

- (id)_ML3PredicateForML3EntityProperty:(id)property
{
  v45[2] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  if (!propertyCopy)
  {
    v17 = 0;
    goto LABEL_60;
  }

  comparisonType = [(MPMediaPropertyPredicate *)self comparisonType];
  value = [(MPMediaPropertyPredicate *)self value];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69B2B30]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E696AD98];
      unsignedIntegerValue = [value unsignedIntegerValue];
      if (unsignedIntegerValue == 0xFF)
      {
        v9 = 255;
      }

      else
      {
        v9 = 0;
      }

      if ((~unsignedIntegerValue & 0xFF00) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 | 0xFF00;
      }

      v11 = vandq_s8(vshlq_u32(vdupq_n_s32(unsignedIntegerValue), xmmword_1A273DDC0), xmmword_1A273DDD0);
      *v11.i8 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
      v12 = [v7 numberWithUnsignedInteger:v11.i32[0] | unsignedIntegerValue & 0x3210 | v11.i32[1] | (unsignedIntegerValue >> 1) & 2 | (unsignedIntegerValue >> 2) & 0x100 | (unsignedIntegerValue >> 1) & 0x400 | v10];
      v13 = [MEMORY[0x1E69B3488] predicateWithProperty:propertyCopy value:v12 comparison:10];
      v14 = [MEMORY[0x1E69B3488] predicateWithProperty:propertyCopy equalToInt64:0];
      v15 = MEMORY[0x1E69B3430];
      v45[0] = v13;
      v45[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v17 = [v15 predicateMatchingPredicates:v16];

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(value, "count")}];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __76__MPMediaPropertyPredicate_ML3Additions___ML3PredicateForML3EntityProperty___block_invoke;
      v41[3] = &unk_1E76779B0;
      v19 = v18;
      v42 = v19;
      [value enumerateObjectsUsingBlock:v41];
      v20 = v19;

      comparisonType = 108;
      value = v20;
    }
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69B3138]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = MEMORY[0x1E696AD98];
      unsignedIntegerValue2 = [value unsignedIntegerValue];
      if (unsignedIntegerValue2 == 0xFF)
      {
        v23 = 255;
      }

      else
      {
        v23 = 0;
      }

      if ((~unsignedIntegerValue2 & 0xFF00) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 | 0xFF00;
      }

      v25 = vandq_s8(vshlq_u32(vdupq_n_s32(unsignedIntegerValue2), xmmword_1A273DDC0), xmmword_1A273DDD0);
      *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
      v12 = [v21 numberWithUnsignedInteger:v25.i32[0] | unsignedIntegerValue2 & 0x3210 | v25.i32[1] | (unsignedIntegerValue2 >> 1) & 2 | (unsignedIntegerValue2 >> 2) & 0x100 | (unsignedIntegerValue2 >> 1) & 0x400 | v24];
      v26 = [MEMORY[0x1E69B3488] predicateWithProperty:propertyCopy value:v12 comparison:10];
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(value, "count")}];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __76__MPMediaPropertyPredicate_ML3Additions___ML3PredicateForML3EntityProperty___block_invoke_2;
      v39 = &unk_1E76779B0;
      v28 = v27;
      v40 = v28;
      [value enumerateObjectsUsingBlock:&v36];
      v29 = v28;

      value = v29;
LABEL_46:
      v32 = [MEMORY[0x1E69B34B8] predicateWithProperty:propertyCopy values:{value, v36, v37, v38, v39}];
      goto LABEL_58;
    }
  }

  if (comparisonType <= 103)
  {
    if (comparisonType > 100)
    {
      if (comparisonType == 101)
      {
        v30 = 0;
        v31 = 3;
      }

      else
      {
        v30 = 0;
        if (comparisonType == 102)
        {
          v31 = 4;
        }

        else
        {
          v31 = 5;
        }
      }

      goto LABEL_57;
    }

    switch(comparisonType)
    {
      case 0:
        v30 = 0;
        v31 = 1;
        goto LABEL_57;
      case 1:
        v30 = 1;
        v31 = 7;
        goto LABEL_57;
      case 100:
        v30 = 0;
        v31 = 2;
LABEL_57:
        v32 = [MEMORY[0x1E69B3488] predicateWithProperty:propertyCopy value:value comparison:v31 caseInsensitive:v30];
        goto LABEL_58;
    }

LABEL_54:
    v33 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v44 = comparisonType;
      _os_log_impl(&dword_1A238D000, v33, OS_LOG_TYPE_ERROR, "Unknown comparison type %ld.", buf, 0xCu);
    }

    v31 = 0;
    v30 = 0;
    goto LABEL_57;
  }

  if (comparisonType <= 106)
  {
    if (comparisonType == 104)
    {
      v30 = 0;
      v31 = 6;
    }

    else
    {
      v30 = 1;
      if (comparisonType == 105)
      {
        v31 = 8;
      }

      else
      {
        v31 = 9;
      }
    }

    goto LABEL_57;
  }

  if (comparisonType == 107)
  {
    v30 = 0;
    v31 = 10;
    goto LABEL_57;
  }

  if (comparisonType == 108)
  {
    goto LABEL_46;
  }

  if (comparisonType != 109)
  {
    goto LABEL_54;
  }

  if (value && [value BOOLValue])
  {
    v32 = [MEMORY[0x1E69B3508] predicateWithProperty:propertyCopy];
LABEL_58:
    v17 = v32;
    goto LABEL_59;
  }

  v35 = MEMORY[0x1E69B34F0];
  v12 = [MEMORY[0x1E69B3508] predicateWithProperty:propertyCopy];
  v26 = [v35 predicateWithPredicate:v12];
LABEL_23:
  v17 = v26;
LABEL_24:

LABEL_59:
LABEL_60:

  return v17;
}

void __76__MPMediaPropertyPredicate_ML3Additions___ML3PredicateForML3EntityProperty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 unsignedIntegerValue];
  if (v4 == 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = 0;
  }

  if ((~v4 & 0xFF00) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 | 0xFF00;
  }

  v7 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v7.i8 = vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  v8 = [v3 numberWithUnsignedInt:v7.i32[0] | v4 & 0x3210 | v7.i32[1] | (v4 >> 1) & 2 | (v4 >> 2) & 0x100 | (v4 >> 1) & 0x400 | v6];
  [v2 addObject:v8];
}

void __76__MPMediaPropertyPredicate_ML3Additions___ML3PredicateForML3EntityProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 unsignedIntegerValue];
  if (v4 == 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = 0;
  }

  if ((~v4 & 0xFF00) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 | 0xFF00;
  }

  v7 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v7.i8 = vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  v8 = [v3 numberWithUnsignedInt:v7.i32[0] | v4 & 0x3210 | v7.i32[1] | (v4 >> 1) & 2 | (v4 >> 2) & 0x100 | (v4 >> 1) & 0x400 | v6];
  [v2 addObject:v8];
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;
}

- (void)setProperty:(id)property
{
  v4 = [property copy];
  property = self->_property;
  self->_property = v4;
}

- (id)protobufferEncodableObjectFromLibrary:(id)library
{
  v53[8] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_alloc_init(MPPPropertyPredicate);
  [(MPPPropertyPredicate *)v5 setProperty:self->_property];
  comparisonType = self->_comparisonType;
  if (comparisonType == 107)
  {
    v7 = 107;
  }

  else
  {
    v7 = 0;
  }

  if (comparisonType == 106)
  {
    v8 = 106;
  }

  else
  {
    v8 = v7;
  }

  if (comparisonType == 105)
  {
    v9 = 105;
  }

  else
  {
    v9 = v8;
  }

  if (comparisonType == 104)
  {
    v10 = 104;
  }

  else
  {
    v10 = 0;
  }

  if (comparisonType == 103)
  {
    v11 = 103;
  }

  else
  {
    v11 = v10;
  }

  if (comparisonType <= 104)
  {
    v9 = v11;
  }

  if (comparisonType == 102)
  {
    v12 = 102;
  }

  else
  {
    v12 = 0;
  }

  if (comparisonType == 101)
  {
    v13 = 101;
  }

  else
  {
    v13 = v12;
  }

  if (comparisonType == 100)
  {
    v14 = 100;
  }

  else
  {
    v14 = v13;
  }

  if (comparisonType == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if (comparisonType)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (comparisonType <= 99)
  {
    v14 = v16;
  }

  if (comparisonType <= 102)
  {
    v17 = v14;
  }

  else
  {
    v17 = v9;
  }

  [(MPPPropertyPredicate *)v5 setComparisonType:v17];
  IsPersistentIDProperty = _MPMediaItemPropertyIsPersistentIDProperty(self->_property);
  value = self->_value;
  if (IsPersistentIDProperty)
  {
    longLongValue = [value longLongValue];
    v46 = libraryCopy;
    if (libraryCopy)
    {
      v20 = libraryCopy;
    }

    else
    {
      v20 = +[MPMediaLibrary defaultMediaLibrary];
    }

    v28 = v20;
    v29 = MEMORY[0x1E695DFD8];
    v30 = self->_property;
    v31 = [v29 setWithObjects:{@"albumPID", @"artistPID", @"albumArtistPID", @"genrePID", @"composerPID", @"podcastPID", @"playlistPersistentID", 0}];
    v32 = [v31 containsObject:v30];

    if (v32)
    {
      property = self->_property;
      v52[0] = @"persistentID";
      v52[1] = @"albumPID";
      v53[0] = &unk_1F15099A0;
      v53[1] = &unk_1F15099B8;
      v52[2] = @"artistPID";
      v52[3] = @"albumArtistPID";
      v53[2] = &unk_1F15099D0;
      v53[3] = &unk_1F15099E8;
      v52[4] = @"genrePID";
      v52[5] = @"composerPID";
      v53[4] = &unk_1F1509A00;
      v53[5] = &unk_1F1509A18;
      v52[6] = @"podcastPID";
      v52[7] = @"playlistPersistentID";
      v53[6] = &unk_1F1509A30;
      v53[7] = &unk_1F1509A48;
      v34 = MEMORY[0x1E695DF20];
      v35 = property;
      v36 = [v34 dictionaryWithObjects:v53 forKeys:v52 count:8];
      v37 = [v36 objectForKey:v35];

      integerValue = [v37 integerValue];
      v39 = [v28 multiverseIdentifierForCollectionWithPersistentID:longLongValue groupingType:integerValue];
    }

    else
    {
      v39 = [v28 multiverseIdentifierForTrackWithPersistentID:longLongValue];
    }

    v21 = v39;
    libraryCopy = v46;
    if (v39)
    {
      data = [v39 data];
      v41 = MPPCreatePredicateValueFromFoundationObject(data);
      [(MPPPropertyPredicate *)v5 setValue:v41];
    }
  }

  else
  {
    v21 = value;
    if ([(NSString *)self->_property isEqualToString:@"mediaType"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = self->_value;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          v26 = *v48;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v25 |= [*(*(&v47 + 1) + 8 * i) longLongValue];
            }

            v24 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v24);
        }

        else
        {
          v25 = 0;
        }

        v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];

        [(MPPPropertyPredicate *)v5 setComparisonType:107];
        v21 = v42;
      }
    }

    v28 = MPPCreatePredicateValueFromFoundationObject(v21);
    [(MPPPropertyPredicate *)v5 setValue:v28];
  }

  v43 = objc_alloc_init(MPPMediaPredicate);
  [(MPPMediaPredicate *)v43 setType:1];
  [(MPPMediaPredicate *)v43 setPropertyPredicate:v5];

  return v43;
}

- (MPMediaPropertyPredicate)initWithProtobufferDecodableObject:(id)object library:(id)library
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:1391 description:{@"Cannot decode object of type %@", objc_opt_class()}];
  }

  v30.receiver = self;
  v30.super_class = MPMediaPropertyPredicate;
  v9 = [(MPMediaPropertyPredicate *)&v30 init];
  if (v9)
  {
    propertyPredicate = [objectCopy propertyPredicate];
    property = [propertyPredicate property];
    v12 = [property copy];
    property = v9->_property;
    v9->_property = v12;

    comparisonType = [propertyPredicate comparisonType];
    v15 = 0;
    if (comparisonType <= 102)
    {
      if (comparisonType > 100)
      {
        if (comparisonType == 101)
        {
          v15 = 101;
        }

        else
        {
          v15 = 102;
        }
      }

      else if (comparisonType == 2)
      {
        v15 = 1;
      }

      else if (comparisonType == 100)
      {
        v15 = 100;
      }
    }

    else if (comparisonType <= 104)
    {
      if (comparisonType == 103)
      {
        v15 = 103;
      }

      else
      {
        v15 = 104;
      }
    }

    else
    {
      switch(comparisonType)
      {
        case 'i':
          v15 = 105;
          break;
        case 'j':
          v15 = 106;
          break;
        case 'k':
          v15 = 107;
          break;
      }
    }

    v9->_comparisonType = v15;
    if (_MPMediaItemPropertyIsPersistentIDProperty(v9->_property))
    {
      if (libraryCopy)
      {
        v16 = libraryCopy;
      }

      else
      {
        v16 = +[MPMediaLibrary defaultMediaLibrary];
      }

      value2 = v16;
      value = [propertyPredicate value];
      v19 = MPPCreateFoundationObjectFromPredicateValue(value);

      v21 = [objc_alloc(MEMORY[0x1E69B3400]) initWithData:v19];
      v22 = [value2 entityWithMultiverseIdentifier:v21];
      v23 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl_Oversize");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v32 = v21;
        v33 = 2114;
        v34 = value2;
        v35 = 2114;
        v36 = v22;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "RPQ: [MPMediaQuery initWithProtobufferDecodableObject:library:] resolving PID predicate multiverseID=%{public}@ library=%{public}@ entity=%{public}@", buf, 0x20u);
      }

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v22, "persistentID")}];
      value = v9->_value;
      v9->_value = v24;

      v26 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl_Oversize");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v9->_value;
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "RPQ: [MPMediaQuery initWithProtobufferDecodableObject:library:] resolving PID predicate value=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      value2 = [propertyPredicate value];
      v18 = MPPCreateFoundationObjectFromPredicateValue(value2);
      v19 = v9->_value;
      v9->_value = v18;
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = equalCopy;
  if (!-[NSString isEqualToString:](self->_property, "isEqualToString:", v5[1]) || self->_comparisonType != v5[3] || ([self->_value isEqual:v5[2]] & 1) == 0)
  {

LABEL_7:
    v8.receiver = self;
    v8.super_class = MPMediaPropertyPredicate;
    v6 = [(MPMediaPropertyPredicate *)&v8 isEqual:equalCopy];
    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (NSString)description
{
  v3 = [(MPMediaPropertyPredicate *)self descriptionOfValue:self->_value forProperty:self->_property];
  comparisonType = self->_comparisonType;
  v5 = @"bit test";
  v6 = @"in";
  v7 = @"has";
  if (comparisonType != 109)
  {
    v7 = 0;
  }

  if (comparisonType != 108)
  {
    v6 = v7;
  }

  if (comparisonType != 107)
  {
    v5 = v6;
  }

  v8 = @"less than or equal";
  v9 = @"starts with";
  v10 = @"ends with";
  if (comparisonType != 106)
  {
    v10 = 0;
  }

  if (comparisonType != 105)
  {
    v9 = v10;
  }

  if (comparisonType != 104)
  {
    v8 = v9;
  }

  if (comparisonType <= 106)
  {
    v5 = v8;
  }

  v11 = @"greater than";
  v12 = @"greater than or equal";
  v13 = @"less than";
  if (comparisonType != 103)
  {
    v13 = 0;
  }

  if (comparisonType != 102)
  {
    v12 = v13;
  }

  if (comparisonType != 101)
  {
    v11 = v12;
  }

  v14 = @"equal to";
  v15 = @"contains";
  v16 = @"not equal to";
  if (comparisonType != 100)
  {
    v16 = 0;
  }

  if (comparisonType != 1)
  {
    v15 = v16;
  }

  if (comparisonType)
  {
    v14 = v15;
  }

  if (comparisonType <= 100)
  {
    v11 = v14;
  }

  if (comparisonType <= 103)
  {
    v17 = v11;
  }

  else
  {
    v17 = v5;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> '%@' %@ %@", objc_opt_class(), self, self->_property, v17, v3];

  return v18;
}

- (id)descriptionOfValue:(id)value forProperty:(id)property
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"mediaType"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = _NSStringFromMPMediaType([valueCopy integerValue], @" | ");
      v14 = [v15 stringWithFormat:@"'%@' %@", valueCopy, v16];

      goto LABEL_17;
    }

    valueCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"'%@'", valueCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = valueCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = _NSStringFromMPMediaType([*(*(&v18 + 1) + 8 * i) integerValue], @" | ");
          [valueCopy appendFormat:@" %@", v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  if ([propertyCopy hasSuffix:@"PID"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(valueCopy, "longLongValue")];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", valueCopy];
  }
  v14 = ;
LABEL_17:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  property = self->_property;
  coderCopy = coder;
  [coderCopy encodeObject:property forKey:@"MPProperty"];
  [coderCopy encodeObject:self->_value forKey:@"MPValue"];
  [coderCopy encodeInteger:self->_comparisonType forKey:@"MPComparisonType"];
}

- (MPMediaPropertyPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MPMediaPropertyPredicate;
  v5 = [(MPMediaPropertyPredicate *)&v15 init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPProperty"];
      property = v5->_property;
      v5->_property = v6;

      v8 = [coderCopy decodePropertyListForKey:@"MPValue"];
      value = v5->_value;
      v5->_value = v8;

      v5->_comparisonType = [coderCopy decodeIntegerForKey:@"MPComparisonType"];
    }

    else
    {
      decodeObject = [coderCopy decodeObject];
      v11 = v5->_property;
      v5->_property = decodeObject;

      decodeObject2 = [coderCopy decodeObject];
      v13 = v5->_value;
      v5->_value = decodeObject2;

      [coderCopy decodeValueOfObjCType:"q" at:&v5->_comparisonType size:8];
    }
  }

  return v5;
}

+ (MPMediaPropertyPredicate)predicateWithValue:(id)value forProperty:(NSString *)property comparisonType:(MPMediaPredicateComparison)comparisonType
{
  v7 = value;
  v8 = property;
  if ([MPMediaItem canFilterByProperty:v8]|| [MPMediaPlaylist canFilterByProperty:v8])
  {
    v9 = objc_alloc_init(MPMediaPropertyPredicate);
    [(MPMediaPropertyPredicate *)v9 setProperty:v8];
    [(MPMediaPropertyPredicate *)v9 setValue:v7];
    [(MPMediaPropertyPredicate *)v9 setComparisonType:comparisonType];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"MPMediaPropertyPredicate cannot filter using the %@ property.", v8}];
    v9 = 0;
  }

  return v9;
}

@end