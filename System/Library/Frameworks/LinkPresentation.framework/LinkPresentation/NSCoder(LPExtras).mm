@interface NSCoder(LPExtras)
- (id)_lp_strictlyDecodeArrayOfLPARAssetsForKey:()LPExtras;
- (id)_lp_strictlyDecodeArrayOfLPImagesForKey:()LPExtras;
- (id)_lp_strictlyDecodeArrayOfObjectsOfClass:()LPExtras forKey:;
- (id)_lp_strictlyDecodeArrayOfObjectsOfClasses:()LPExtras forKey:;
- (id)_lp_strictlyDecodeColorForKey:()LPExtras;
- (id)_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:()LPExtras andObjectsOfClass:forKey:;
- (id)_lp_strictlyDecodeLPARAssetForKey:()LPExtras;
- (id)_lp_strictlyDecodeLPImageForKey:()LPExtras;
- (id)_lp_strictlyDecodeLPVideoForKey:()LPExtras;
- (id)_lp_strictlyDecodeNSAttributedStringForKey:()LPExtras;
- (id)_lp_strictlyDecodeNSDataForKey:()LPExtras;
- (id)_lp_strictlyDecodeNSStringForKey:()LPExtras;
- (id)_lp_strictlyDecodeObjectOfClass:()LPExtras forKey:;
- (id)_lp_strictlyDecodeObjectOfClasses:()LPExtras forKey:;
- (id)_lp_strictlyDecodeTopLevelObjectOfClass:()LPExtras forKey:error:;
- (id)_lp_strictlyDecodeTopLevelObjectOfClasses:()LPExtras forKey:error:;
- (uint64_t)_lp_coderOptions;
- (uint64_t)_lp_coderType;
- (void)_lp_encodeArrayIfNotEmpty:()LPExtras forKey:;
- (void)_lp_encodeColorIfNotNil:()LPExtras forKey:;
- (void)_lp_encodeObjectIfNotNil:()LPExtras forKey:;
- (void)_lp_encodeStringIfNotNil:()LPExtras forKey:;
- (void)_lp_encodeURLIfNotNilOrLocalFile:()LPExtras forKey:;
- (void)_lp_setCoderOptions:()LPExtras;
- (void)_lp_setCoderType:()LPExtras;
@end

@implementation NSCoder(LPExtras)

- (id)_lp_strictlyDecodeNSDataForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeNSStringForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeNSAttributedStringForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeLPARAssetForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, NSClassFromString(&cfstr_Lparassetattac.isa), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeArrayOfLPARAssetsForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, NSClassFromString(&cfstr_Lparassetattac.isa), 0}];
  v8 = [a1 _lp_strictlyDecodeArrayOfObjectsOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeLPImageForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, NSClassFromString(&cfstr_Lpimageattachm.isa), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeArrayOfLPImagesForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, NSClassFromString(&cfstr_Lpimageattachm.isa), 0}];
  v8 = [a1 _lp_strictlyDecodeArrayOfObjectsOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeLPVideoForKey:()LPExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, NSClassFromString(&cfstr_Lpvideoattachm.isa), 0}];
  v8 = [a1 _lp_strictlyDecodeObjectOfClasses:v7 forKey:v4];

  return v8;
}

- (id)_lp_strictlyDecodeObjectOfClass:()LPExtras forKey:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{a3, objc_opt_class(), 0}];
  v8 = [a1 decodeObjectOfClasses:v7 forKey:v6];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_lp_strictlyDecodeObjectOfClasses:()LPExtras forKey:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 setByAddingObject:objc_opt_class()];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_opt_isKindOfClass())
        {
          v14 = v9;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_lp_strictlyDecodeTopLevelObjectOfClass:()LPExtras forKey:error:
{
  v8 = a4;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{a3, objc_opt_class(), 0}];
  v10 = [a1 decodeTopLevelObjectOfClasses:v9 forKey:v8 error:a5];

  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_lp_strictlyDecodeTopLevelObjectOfClasses:()LPExtras forKey:error:
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 setByAddingObject:objc_opt_class()];
  v11 = [a1 decodeTopLevelObjectOfClasses:v10 forKey:v9 error:a5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if (objc_opt_isKindOfClass())
        {
          v16 = v11;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_lp_strictlyDecodeArrayOfObjectsOfClass:()LPExtras forKey:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{a3, v8, v9, objc_opt_class(), 0}];
  v11 = [a1 decodeObjectOfClasses:v10 forKey:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = v12;
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (id)_lp_strictlyDecodeArrayOfObjectsOfClasses:()LPExtras forKey:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v10 setByAddingObjectsFromSet:v6];
  v12 = [a1 decodeObjectOfClasses:v11 forKey:v23];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (!v13)
    {
LABEL_19:

      v20 = obj;
      goto LABEL_22;
    }

    v14 = *v29;
    while (1)
    {
      v15 = 0;
LABEL_6:
      if (*v29 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v17)
      {
        break;
      }

      v18 = *v25;
LABEL_10:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v16);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v17)
          {
            goto LABEL_10;
          }

          goto LABEL_20;
        }
      }

      if (++v15 != v13)
      {
        goto LABEL_6;
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (!v13)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (id)_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:()LPExtras andObjectsOfClass:forKey:
{
  v8 = a5;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{a3, a4, v10, v11, objc_opt_class(), 0}];
  v13 = [a1 decodeObjectOfClasses:v12 forKey:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__NSCoder_LPExtras___lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass_andObjectsOfClass_forKey___block_invoke;
    v16[3] = &unk_1E7A371D0;
    v16[5] = a3;
    v16[6] = a4;
    v16[4] = &v17;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
    if (v18[3])
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_lp_encodeObjectIfNotNil:()LPExtras forKey:
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_lp_encodeStringIfNotNil:()LPExtras forKey:
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v8 "classForCoder")] & 1) == 0)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v8];

      v8 = v7;
    }

    [a1 encodeObject:v8 forKey:v6];
  }

  else
  {
    v8 = 0;
  }
}

- (void)_lp_encodeArrayIfNotEmpty:()LPExtras forKey:
{
  v7 = a3;
  v6 = a4;
  if ([v7 count])
  {
    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_lp_encodeURLIfNotNilOrLocalFile:()LPExtras forKey:
{
  v8 = a3;
  v6 = a4;
  if (v8 && (![v8 isFileURL] || objc_msgSend(a1, "_lp_coderType") == 1))
  {
    v7 = urlByRemovingTrackingInformation(v8);
    [a1 encodeObject:v7 forKey:v6];
  }
}

- (void)_lp_encodeColorIfNotNil:()LPExtras forKey:
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v18 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if ([v6 getRed:&v19 green:&v18 blue:&v17 alpha:&v16])
    {
      [a1 encodeBool:1 forKey:v7];
      v8 = v19;
      v9 = [v7 stringByAppendingString:@".red"];
      [a1 encodeDouble:v9 forKey:v8];

      v10 = v18;
      v11 = [v7 stringByAppendingString:@".green"];
      [a1 encodeDouble:v11 forKey:v10];

      v12 = v17;
      v13 = [v7 stringByAppendingString:@".blue"];
      [a1 encodeDouble:v13 forKey:v12];

      v14 = v16;
      v15 = [v7 stringByAppendingString:@".alpha"];
      [a1 encodeDouble:v15 forKey:v14];
    }
  }
}

- (id)_lp_strictlyDecodeColorForKey:()LPExtras
{
  v4 = a3;
  if ([a1 decodeBoolForKey:v4])
  {
    v5 = [v4 stringByAppendingString:@".red"];
    [a1 decodeDoubleForKey:v5];
    v7 = v6;

    v8 = [v4 stringByAppendingString:@".green"];
    [a1 decodeDoubleForKey:v8];
    v10 = v9;

    v11 = [v4 stringByAppendingString:@".blue"];
    [a1 decodeDoubleForKey:v11];
    v13 = v12;

    v14 = [v4 stringByAppendingString:@".alpha"];
    [a1 decodeDoubleForKey:v14];
    v16 = v15;

    v17 = [MEMORY[0x1E69DC888] colorWithRed:v7 green:v10 blue:v13 alpha:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (uint64_t)_lp_coderType
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lp_setCoderType:()LPExtras
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, sel__lp_coderType, v2, 1);
}

- (uint64_t)_lp_coderOptions
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lp_setCoderOptions:()LPExtras
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, sel__lp_coderOptions, v2, 1);
}

@end