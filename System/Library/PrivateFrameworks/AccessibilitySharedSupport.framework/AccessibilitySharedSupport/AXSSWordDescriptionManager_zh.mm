@interface AXSSWordDescriptionManager_zh
- (id)componentDescriptionForCharacter:(id)character;
- (id)descriptionForCharacter:(id)character language:(id)language;
- (id)descriptionForWord:(id)word;
@end

@implementation AXSSWordDescriptionManager_zh

- (id)descriptionForWord:(id)word
{
  v4 = MEMORY[0x1E695DF70];
  wordCopy = word;
  array = [v4 array];
  v7 = [wordCopy length];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__AXSSWordDescriptionManager_zh_descriptionForWord___block_invoke;
  v14 = &unk_1E8135858;
  selfCopy = self;
  v16 = array;
  v8 = array;
  [wordCopy enumerateSubstringsInRange:0 options:v7 usingBlock:{2, &v11}];

  v9 = [v8 componentsJoinedByString:{@"，", v11, v12, v13, v14, selfCopy}];

  return v9;
}

- (id)descriptionForCharacter:(id)character language:(id)language
{
  characterCopy = character;
  languageCopy = language;
  managedObjectContext = [(AXSSWordDescriptionManager *)self managedObjectContext];
  if (!managedObjectContext)
  {
    characterCopy3 = 0;
    goto LABEL_23;
  }

  v9 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Entry"];
  characterCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"character == %@", characterCopy];
  [v9 setPredicate:characterCopy];
  v20 = 0;
  v11 = [managedObjectContext executeFetchRequest:v9 error:&v20];
  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    if ([languageCopy hasPrefix:@"zh-Hans"])
    {
      v13 = @"simplifiedExemplar";
    }

    else if ([languageCopy hasPrefix:@"zh-Hant"])
    {
      v13 = @"traditionalExemplar";
    }

    else
    {
      if (![languageCopy hasPrefix:@"yue-Hant"])
      {
        v15 = 0;
        goto LABEL_12;
      }

      v13 = @"cantoneseExemplar";
    }

    v15 = [v12 valueForKey:v13];
LABEL_12:
    if ([v15 length])
    {
      if ([v15 length] >= 3 && (v16 = objc_msgSend(v15, "rangeOfString:options:", @"的", 4), v16 == objc_msgSend(v15, "length") - 2))
      {
        characterCopy2 = v15;
      }

      else
      {
        characterCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@的%@", v15, characterCopy];
      }

      characterCopy3 = characterCopy2;
    }

    else
    {
      v18 = [v12 valueForKey:@"components"];
      if ([v18 length])
      {
        characterCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v18, characterCopy];
      }

      else
      {

        characterCopy3 = 0;
      }
    }

    goto LABEL_22;
  }

  characterCopy3 = 0;
LABEL_22:

LABEL_23:

  return characterCopy3;
}

- (id)componentDescriptionForCharacter:(id)character
{
  characterCopy = character;
  managedObjectContext = [(AXSSWordDescriptionManager *)self managedObjectContext];
  if (managedObjectContext)
  {
    v6 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Entry"];
    characterCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"character == %@", characterCopy];
    [v6 setPredicate:characterCopy];
    v12 = 0;
    v8 = [managedObjectContext executeFetchRequest:v6 error:&v12];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      v10 = [v9 valueForKey:@"components"];
      if (![v10 length])
      {

        v10 = 0;
      }
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

  return v10;
}

@end