@interface CLPlacemark(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation CLPlacemark(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  dictionary = [v4 dictionary];
  configuration = [v5 configuration];

  v8 = [configuration copy];
  [v8 setLocationIncludesTimestamp:0];
  v9 = [[INJSONEncoder alloc] initWithConfiguration:v8];
  location = [self location];
  v11 = [(INJSONEncoder *)v9 encodeObject:location];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"location"];

  name = [self name];
  v13 = [(INJSONEncoder *)v9 encodeObject:name];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"name"];

  postalAddress = [self postalAddress];
  dictionaryRepresentation = [postalAddress dictionaryRepresentation];
  [dictionary if_setObjectIfNonNil:dictionaryRepresentation forKey:@"postalAddress"];

  return dictionary;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_opt_class();
    v11 = [v9 objectForKeyedSubscript:@"location"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = [v9 objectForKeyedSubscript:@"name"];
      v15 = [v7 decodeObjectOfClass:v13 from:v14];
      v16 = v15;
      v17 = &stru_1F01E0850;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      v19 = [v9 objectForKeyedSubscript:@"postalAddress"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = MEMORY[0x1E695FC20];
        v27 = 0;
        v28 = &v27;
        v29 = 0x2050000000;
        v21 = getCNPostalAddressClass_softClass_111114;
        v30 = getCNPostalAddressClass_softClass_111114;
        if (!getCNPostalAddressClass_softClass_111114)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __getCNPostalAddressClass_block_invoke_111115;
          v26[3] = &unk_1E72888B8;
          v26[4] = &v27;
          __getCNPostalAddressClass_block_invoke_111115(v26);
          v21 = v28[3];
        }

        v22 = v21;
        _Block_object_dispose(&v27, 8);
        v23 = [v21 postalAddressWithDictionaryRepresentation:v19];
        v24 = [v20 placemarkWithLocation:v12 name:v18 postalAddress:v23];
      }

      else
      {

        v24 = [MEMORY[0x1E695FC20] placemarkWithLocation:v12 name:v18 postalAddress:0];
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {

    v24 = 0;
  }

  return v24;
}

@end