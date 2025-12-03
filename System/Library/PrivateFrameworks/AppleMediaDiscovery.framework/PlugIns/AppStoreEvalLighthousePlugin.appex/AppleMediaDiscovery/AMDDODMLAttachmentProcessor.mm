@interface AMDDODMLAttachmentProcessor
- (AMDDODMLAttachmentProcessor)initWithAttachmentURLs:(id)ls withInstructions:(id)instructions error:(id *)error errorDomain:(id)domain;
- (AMDDODMLAttachmentProcessor)initWithHashMapDictionary:(id)dictionary withDownSampleDictionary:(id)sampleDictionary withNegSampleDictionary:(id)negSampleDictionary;
- (id)downSampleDictionaryForKey:(id)key;
- (id)getURLFromURLArray:(id)array error:(id *)error errorDomain:(id)domain;
- (id)hashMapForKey:(id)key;
- (id)negSampleArrayForKey:(id)key;
- (id)readDownSampleDictionary:(id)dictionary withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readDownSampleDictionaryBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readHashMapDictionary:(id)dictionary withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readHashMapDictionaryBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readNegativeSampleArray:(id)array withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readNegativeSampleArrayBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)readWeightsArrayBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain;
- (id)setHashMap:(id)map forKey:(id)key;
@end

@implementation AMDDODMLAttachmentProcessor

- (AMDDODMLAttachmentProcessor)initWithHashMapDictionary:(id)dictionary withDownSampleDictionary:(id)sampleDictionary withNegSampleDictionary:(id)negSampleDictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v13 = 0;
  objc_storeStrong(&v13, sampleDictionary);
  v12 = 0;
  objc_storeStrong(&v12, negSampleDictionary);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AMDDODMLAttachmentProcessor;
  v10 = [(AMDDODMLAttachmentProcessor *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_hashMapAttachments, location[0]);
    objc_storeStrong(&selfCopy->_downSampleAttachments, v13);
    objc_storeStrong(&selfCopy->_negSampleAttachements, v12);
  }

  v7 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AMDDODMLAttachmentProcessor)initWithAttachmentURLs:(id)ls withInstructions:(id)instructions error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ls);
  v47 = 0;
  objc_storeStrong(&v47, instructions);
  errorCopy = error;
  v45 = 0;
  objc_storeStrong(&v45, domain);
  v6 = selfCopy;
  selfCopy = 0;
  v44.receiver = v6;
  v44.super_class = AMDDODMLAttachmentProcessor;
  v38 = [(AMDDODMLAttachmentProcessor *)&v44 init];
  selfCopy = v38;
  objc_storeStrong(&selfCopy, v38);
  if (v38)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(selfCopy + 1);
    *(selfCopy + 1) = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(selfCopy + 2);
    *(selfCopy + 2) = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = *(selfCopy + 3);
    *(selfCopy + 3) = v11;

    for (i = 0; ; ++i)
    {
      v34 = i;
      if (v34 >= [v47 count])
      {
        goto LABEL_27;
      }

      v42 = [v47 objectAtIndex:i];
      v41 = [v42 objectForKey:FunctionName];
      if (!v41)
      {
        v13 = [NSError alloc];
        v33 = [v13 initWithDomain:v45 code:50 userInfo:0];
        v14 = v33;
        *errorCopy = v33;
        v50 = 0;
        v40 = 1;
        goto LABEL_25;
      }

      v39 = 0;
      if ([v41 isEqual:HashMapFile])
      {
        v15 = [selfCopy readHashMapDictionary:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v16 = v39;
        v39 = v15;

        goto LABEL_21;
      }

      if ([v41 isEqual:HashMapFileBytes])
      {
        v17 = [selfCopy readHashMapDictionaryBytes:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v18 = v39;
        v39 = v17;

        goto LABEL_21;
      }

      if ([v41 isEqual:NegativeSampleFile])
      {
        v19 = [selfCopy readNegativeSampleArray:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v20 = v39;
        v39 = v19;

        goto LABEL_21;
      }

      if ([v41 isEqual:NegativeSampleFileBytes])
      {
        v21 = [selfCopy readNegativeSampleArrayBytes:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v22 = v39;
        v39 = v21;

        goto LABEL_21;
      }

      if ([v41 isEqual:DownSampleFile])
      {
        v23 = [selfCopy readDownSampleDictionary:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v24 = v39;
        v39 = v23;

        goto LABEL_21;
      }

      if ([v41 isEqual:DownSampleFileBytes])
      {
        break;
      }

      if ([v41 isEqual:WeightsFileBytes])
      {
        v27 = [selfCopy readWeightsArrayBytes:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
        v28 = v39;
        v39 = v27;

LABEL_21:
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v50 = 0;
          v40 = 1;
        }

        goto LABEL_24;
      }

      v29 = [NSError alloc];
      v32 = [v29 initWithDomain:v45 code:50 userInfo:0];
      v30 = v32;
      *errorCopy = v32;
      v50 = 0;
      v40 = 1;
LABEL_24:
      objc_storeStrong(&v39, 0);
LABEL_25:
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      if (v40)
      {
        goto LABEL_28;
      }
    }

    v25 = [selfCopy readDownSampleDictionaryBytes:v42 withAttachments:location[0] error:errorCopy errorDomain:v45];
    v26 = v39;
    v39 = v25;

    goto LABEL_21;
  }

LABEL_27:
  v50 = selfCopy;
  v40 = 1;
LABEL_28:
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v50;
}

- (id)hashMapForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(NSMutableDictionary *)selfCopy->_hashMapAttachments objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)setHashMap:(id)map forKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, map);
  v7 = 0;
  objc_storeStrong(&v7, key);
  [(NSMutableDictionary *)selfCopy->_hashMapAttachments setObject:location[0] forKey:v7];
  v6 = [NSNumber numberWithLong:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)downSampleDictionaryForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(NSMutableDictionary *)selfCopy->_downSampleAttachments objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)negSampleArrayForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(NSMutableDictionary *)selfCopy->_negSampleAttachements objectForKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)getURLFromURLArray:(id)array error:(id *)error errorDomain:(id)domain
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  errorCopy = error;
  v17 = 0;
  objc_storeStrong(&v17, domain);
  if ([location[0] count])
  {
    if ([location[0] count] <= 1)
    {
      firstObject = [location[0] firstObject];
      v20 = firstObject;
      v16 = 1;
      objc_storeStrong(&firstObject, 0);
    }

    else
    {
      v7 = [NSError alloc];
      v11 = [v7 initWithDomain:v17 code:95 userInfo:0];
      v8 = v11;
      *errorCopy = v11;
      v20 = 0;
      v16 = 1;
    }
  }

  else
  {
    v5 = [NSError alloc];
    v12 = [v5 initWithDomain:v17 code:94 userInfo:0];
    v6 = v12;
    *errorCopy = v12;
    v20 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v9 = v20;

  return v9;
}

- (id)readNegativeSampleArray:(id)array withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  v34 = 0;
  objc_storeStrong(&v34, attachments);
  errorCopy = error;
  v32 = 0;
  objc_storeStrong(&v32, domain);
  v31 = [location[0] objectForKey:FileBaseName];
  v30 = [location[0] objectForKey:OutputArray];
  if (v31 && v30)
  {
    v28 = [v34 attachmentURLsForBasename:v31];
    v27 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v28 error:errorCopy errorDomain:v32];
    if (v27)
    {
      v26 = [NSString stringWithContentsOfURL:v27 encoding:4 error:errorCopy];
      if ([v26 isEqual:0])
      {
        v37 = 0;
        v29 = 1;
      }

      else
      {
        v25 = [v26 componentsSeparatedByString:@"\n"];
        v24 = objc_alloc_init(NSMutableArray);
        memset(__b, 0, sizeof(__b));
        v16 = v25;
        v17 = [v16 countByEnumeratingWithState:__b objects:v38 count:16];
        if (v17)
        {
          v13 = *__b[2];
          v14 = 0;
          v15 = v17;
          while (1)
          {
            v12 = v14;
            if (*__b[2] != v13)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(__b[1] + 8 * v14);
            v10 = v24;
            v11 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v23 longLongValue]);
            [v10 addObject:?];

            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [v16 countByEnumeratingWithState:__b objects:v38 count:16];
              if (!v15)
              {
                break;
              }
            }
          }
        }

        [(NSMutableDictionary *)selfCopy->_negSampleAttachements setObject:v24 forKey:v30];
        v37 = [NSNumber numberWithLong:1];
        v29 = 1;
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
      }

      objc_storeStrong(&v26, 0);
    }

    else
    {
      v37 = 0;
      v29 = 1;
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v18 = [v6 initWithDomain:v32 code:51 userInfo:0];
    v7 = v18;
    *errorCopy = v18;
    v37 = 0;
    v29 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  v8 = v37;

  return v8;
}

- (id)readNegativeSampleArrayBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bytes);
  v31 = 0;
  objc_storeStrong(&v31, attachments);
  errorCopy = error;
  v29 = 0;
  objc_storeStrong(&v29, domain);
  v28 = [location[0] objectForKey:FileBaseName];
  v27 = [location[0] objectForKey:OutputArray];
  if (v28 && v27)
  {
    v25 = [v31 attachmentURLsForBasename:v28];
    v24 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v25 error:errorCopy errorDomain:v29];
    if (v24)
    {
      v23 = [NSData dataWithContentsOfURL:v24 options:1 error:errorCopy];
      if (v23)
      {
        if ([v23 length] % 8)
        {
          v8 = [NSError alloc];
          v15 = [v8 initWithDomain:v29 code:59 userInfo:0];
          v9 = v15;
          *errorCopy = v15;
          v34 = 0;
          v26 = 1;
        }

        else
        {
          v22 = objc_alloc_init(NSMutableArray);
          for (i = 0; ; ++i)
          {
            v14 = i;
            if (v14 >= [v23 length] / 8)
            {
              break;
            }

            v20 = 0.0;
            v36 = 8 * i;
            v35 = 8;
            v37 = 8 * i;
            v38 = 8;
            [v23 getBytes:&v20 range:{8 * i, 8}];
            v12 = v22;
            v13 = [NSNumber numberWithDouble:v20];
            [v12 addObject:?];
          }

          [(NSMutableDictionary *)selfCopy->_negSampleAttachements setObject:v22 forKey:v27];
          v34 = [NSNumber numberWithLong:1];
          v26 = 1;
          objc_storeStrong(&v22, 0);
        }
      }

      else
      {
        v34 = 0;
        v26 = 1;
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v34 = 0;
      v26 = 1;
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v16 = [v6 initWithDomain:v29 code:52 userInfo:0];
    v7 = v16;
    *errorCopy = v16;
    v34 = 0;
    v26 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v10 = v34;

  return v10;
}

- (id)readDownSampleDictionary:(id)dictionary withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v40 = 0;
  objc_storeStrong(&v40, attachments);
  errorCopy = error;
  v38 = 0;
  objc_storeStrong(&v38, domain);
  v37 = [location[0] objectForKey:FileBaseName];
  v36 = [location[0] objectForKey:OutputDictionary];
  if (v37 && v36)
  {
    v34 = [v40 attachmentURLsForBasename:v37];
    v33 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v34 error:errorCopy errorDomain:v38];
    if (v33)
    {
      v32 = [NSString stringWithContentsOfURL:v33 encoding:4 error:errorCopy];
      if ([v32 isEqual:0])
      {
        v43 = 0;
        v35 = 1;
      }

      else
      {
        v31 = [v32 componentsSeparatedByString:@"\n"];
        v30 = objc_alloc_init(NSMutableDictionary);
        memset(__b, 0, sizeof(__b));
        v19 = v31;
        v20 = [v19 countByEnumeratingWithState:__b objects:v44 count:16];
        if (v20)
        {
          v16 = *__b[2];
          v17 = 0;
          v18 = v20;
          while (1)
          {
            v15 = v17;
            if (*__b[2] != v16)
            {
              objc_enumerationMutation(v19);
            }

            v29 = *(__b[1] + 8 * v17);
            v27 = [v29 componentsSeparatedByString:{@", "}];
            if ([v27 count] == 2)
            {
              v12 = [v27 objectAtIndexedSubscript:0];
              v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v12 longLongValue]);

              v13 = [v27 objectAtIndexedSubscript:1];
              [v13 doubleValue];
              v25 = [NSNumber numberWithDouble:?];

              [v30 setObject:v25 forKey:v26];
              objc_storeStrong(&v25, 0);
              objc_storeStrong(&v26, 0);
              v35 = 0;
            }

            else
            {
              v8 = [NSError alloc];
              v14 = [v8 initWithDomain:v38 code:14 userInfo:0];
              v9 = v14;
              *errorCopy = v14;
              v43 = 0;
              v35 = 1;
            }

            objc_storeStrong(&v27, 0);
            if (v35)
            {
              break;
            }

            ++v17;
            if (v15 + 1 >= v18)
            {
              v17 = 0;
              v18 = [v19 countByEnumeratingWithState:__b objects:v44 count:16];
              if (!v18)
              {
                goto LABEL_18;
              }
            }
          }
        }

        else
        {
LABEL_18:
          v35 = 0;
        }

        if (!v35)
        {
          [(NSMutableDictionary *)selfCopy->_downSampleAttachments setObject:v30 forKey:v36];
          v43 = [NSNumber numberWithLong:1];
          v35 = 1;
        }

        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&v32, 0);
    }

    else
    {
      v43 = 0;
      v35 = 1;
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v21 = [v6 initWithDomain:v38 code:53 userInfo:0];
    v7 = v21;
    *errorCopy = v21;
    v43 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  v10 = v43;

  return v10;
}

- (id)readDownSampleDictionaryBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bytes);
  v40 = 0;
  objc_storeStrong(&v40, attachments);
  errorCopy = error;
  v38 = 0;
  objc_storeStrong(&v38, domain);
  v37 = [location[0] objectForKey:FileBaseName];
  v36 = [location[0] objectForKey:SecondFileBaseName];
  v35 = [location[0] objectForKey:OutputDictionary];
  if (v37 && v36 && v35)
  {
    v33 = [v40 attachmentURLsForBasename:v37];
    v32 = [v40 attachmentURLsForBasename:v36];
    v31 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v33 error:errorCopy errorDomain:v38];
    v30 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v32 error:errorCopy errorDomain:v38];
    if (v31 && v30)
    {
      v29 = [NSData dataWithContentsOfURL:"dataWithContentsOfURL:options:error:" options:v31 error:?];
      v28 = [NSData dataWithContentsOfURL:v30 options:1 error:errorCopy];
      if (v29 && v28)
      {
        v17 = [v29 length];
        if (v17 == [v28 length])
        {
          if ([v29 length] % 8)
          {
            v10 = [NSError alloc];
            v15 = [v10 initWithDomain:v38 code:59 userInfo:0];
            v11 = v15;
            *errorCopy = v15;
            v43 = 0;
            v34 = 1;
          }

          else
          {
            v27 = objc_alloc_init(NSMutableDictionary);
            for (i = 0; ; ++i)
            {
              v14 = i;
              if (v14 >= [v29 length] / 8)
              {
                break;
              }

              v25 = 0;
              v49 = 8 * i;
              v48 = 8;
              v50 = 8 * i;
              v51 = 8;
              *&v24[1] = 8 * i;
              *&v24[2] = 8;
              [v29 getBytes:&v25 range:{8 * i, 8}];
              v24[0] = 0.0;
              v45 = 8 * i;
              v44 = 8;
              v46 = 8 * i;
              v47 = 8;
              v23[1] = (8 * i);
              v23[2] = 8;
              [v28 getBytes:v24 range:{8 * i, 8}];
              v23[0] = [NSNumber numberWithLong:v25];
              v22 = [NSNumber numberWithDouble:v24[0]];
              [v27 setObject:v22 forKey:v23[0]];
              objc_storeStrong(&v22, 0);
              objc_storeStrong(v23, 0);
            }

            [(NSMutableDictionary *)selfCopy->_downSampleAttachments setObject:v27 forKey:v35];
            v43 = [NSNumber numberWithLong:1];
            v34 = 1;
            objc_storeStrong(&v27, 0);
          }
        }

        else
        {
          v8 = [NSError alloc];
          v16 = [v8 initWithDomain:v38 code:58 userInfo:0];
          v9 = v16;
          *errorCopy = v16;
          v43 = 0;
          v34 = 1;
        }
      }

      else
      {
        v43 = 0;
        v34 = 1;
      }

      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v43 = 0;
      v34 = 1;
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v18 = [v6 initWithDomain:v38 code:54 userInfo:0];
    v7 = v18;
    *errorCopy = v18;
    v43 = 0;
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  v12 = v43;

  return v12;
}

- (id)readHashMapDictionary:(id)dictionary withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v40 = 0;
  objc_storeStrong(&v40, attachments);
  errorCopy = error;
  v38 = 0;
  objc_storeStrong(&v38, domain);
  v37 = [location[0] objectForKey:FileBaseName];
  v36 = [location[0] objectForKey:OutputDictionary];
  if (v37 && v36)
  {
    v34 = [v40 attachmentURLsForBasename:v37];
    v33 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v34 error:errorCopy errorDomain:v38];
    if (v33)
    {
      v32 = [NSString stringWithContentsOfURL:v33 encoding:4 error:errorCopy];
      if ([v32 isEqual:0])
      {
        v43 = 0;
        v35 = 1;
      }

      else
      {
        v31 = [v32 componentsSeparatedByString:@"\n"];
        v30 = objc_alloc_init(NSMutableDictionary);
        memset(__b, 0, sizeof(__b));
        v19 = v31;
        v20 = [v19 countByEnumeratingWithState:__b objects:v44 count:16];
        if (v20)
        {
          v16 = *__b[2];
          v17 = 0;
          v18 = v20;
          while (1)
          {
            v15 = v17;
            if (*__b[2] != v16)
            {
              objc_enumerationMutation(v19);
            }

            v29 = *(__b[1] + 8 * v17);
            v27 = [v29 componentsSeparatedByString:{@", "}];
            if ([v27 count] == 2)
            {
              v12 = [v27 objectAtIndexedSubscript:0];
              v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v12 longLongValue]);

              v13 = [v27 objectAtIndexedSubscript:1];
              v25 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v13 longLongValue]);

              [v30 setObject:v25 forKey:v26];
              objc_storeStrong(&v25, 0);
              objc_storeStrong(&v26, 0);
              v35 = 0;
            }

            else
            {
              v8 = [NSError alloc];
              v14 = [v8 initWithDomain:v38 code:14 userInfo:0];
              v9 = v14;
              *errorCopy = v14;
              v43 = 0;
              v35 = 1;
            }

            objc_storeStrong(&v27, 0);
            if (v35)
            {
              break;
            }

            ++v17;
            if (v15 + 1 >= v18)
            {
              v17 = 0;
              v18 = [v19 countByEnumeratingWithState:__b objects:v44 count:16];
              if (!v18)
              {
                goto LABEL_18;
              }
            }
          }
        }

        else
        {
LABEL_18:
          v35 = 0;
        }

        if (!v35)
        {
          [(NSMutableDictionary *)selfCopy->_hashMapAttachments setObject:v30 forKey:v36];
          v43 = [NSNumber numberWithLong:1];
          v35 = 1;
        }

        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&v32, 0);
    }

    else
    {
      v43 = 0;
      v35 = 1;
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v21 = [v6 initWithDomain:v38 code:55 userInfo:0];
    v7 = v21;
    *errorCopy = v21;
    v43 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  v10 = v43;

  return v10;
}

- (id)readHashMapDictionaryBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bytes);
  v40 = 0;
  objc_storeStrong(&v40, attachments);
  errorCopy = error;
  v38 = 0;
  objc_storeStrong(&v38, domain);
  v37 = [location[0] objectForKey:FileBaseName];
  v36 = [location[0] objectForKey:SecondFileBaseName];
  v35 = [location[0] objectForKey:OutputDictionary];
  if (v37 && v36 && v35)
  {
    v33 = [v40 attachmentURLsForBasename:v37];
    v32 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v33 error:errorCopy errorDomain:v38];
    v31 = [v40 attachmentURLsForBasename:v36];
    v30 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v31 error:errorCopy errorDomain:v38];
    if (v32 && v30)
    {
      v29 = [NSData dataWithContentsOfURL:"dataWithContentsOfURL:options:error:" options:v32 error:?];
      v28 = [NSData dataWithContentsOfURL:v30 options:1 error:errorCopy];
      if (v28 && v29)
      {
        v17 = [v29 length];
        if (v17 == [v28 length])
        {
          if ([v29 length] % 8)
          {
            v10 = [NSError alloc];
            v15 = [v10 initWithDomain:v38 code:59 userInfo:0];
            v11 = v15;
            *errorCopy = v15;
            v43 = 0;
            v34 = 1;
          }

          else
          {
            v27 = objc_alloc_init(NSMutableDictionary);
            for (i = 0; ; ++i)
            {
              v14 = i;
              if (v14 >= [v29 length] / 8)
              {
                break;
              }

              v25 = 0;
              v49 = 8 * i;
              v48 = 8;
              v50 = 8 * i;
              v51 = 8;
              v24[1] = 8 * i;
              v24[2] = 8;
              [v29 getBytes:&v25 range:{8 * i, 8}];
              v24[0] = 0;
              v45 = 8 * i;
              v44 = 8;
              v46 = 8 * i;
              v47 = 8;
              v23[1] = (8 * i);
              v23[2] = 8;
              [v28 getBytes:v24 range:{8 * i, 8}];
              v23[0] = [NSNumber numberWithLong:v25];
              v22 = [NSNumber numberWithLong:v24[0]];
              [v27 setObject:v22 forKey:v23[0]];
              objc_storeStrong(&v22, 0);
              objc_storeStrong(v23, 0);
            }

            [(NSMutableDictionary *)selfCopy->_hashMapAttachments setObject:v27 forKey:v35];
            v43 = [NSNumber numberWithLong:1];
            v34 = 1;
            objc_storeStrong(&v27, 0);
          }
        }

        else
        {
          v8 = [NSError alloc];
          v16 = [v8 initWithDomain:v38 code:58 userInfo:0];
          v9 = v16;
          *errorCopy = v16;
          v43 = 0;
          v34 = 1;
        }
      }

      else
      {
        v43 = 0;
        v34 = 1;
      }

      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v43 = 0;
      v34 = 1;
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v18 = [v6 initWithDomain:v38 code:56 userInfo:0];
    v7 = v18;
    *errorCopy = v18;
    v43 = 0;
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  v12 = v43;

  return v12;
}

- (id)readWeightsArrayBytes:(id)bytes withAttachments:(id)attachments error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bytes);
  v21 = 0;
  objc_storeStrong(&v21, attachments);
  errorCopy = error;
  v19 = 0;
  objc_storeStrong(&v19, domain);
  v18 = [location[0] objectForKey:FileBaseName];
  if (v18)
  {
    v16 = [v21 attachmentURLsForBasename:v18];
    v15 = [(AMDDODMLAttachmentProcessor *)selfCopy getURLFromURLArray:v16 error:errorCopy errorDomain:v19];
    if (v15)
    {
      v14 = [NSData dataWithContentsOfURL:v15 options:1 error:errorCopy];
      if (v14)
      {
        objc_storeStrong(&selfCopy->_weightAttachment, v14);
        v24 = [NSNumber numberWithLong:1];
      }

      else
      {
        v24 = 0;
      }

      v17 = 1;
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v24 = 0;
      v17 = 1;
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v6 = [NSError alloc];
    v10 = [v6 initWithDomain:v19 code:113 userInfo:0];
    v7 = v10;
    *errorCopy = v10;
    v24 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v8 = v24;

  return v8;
}

@end