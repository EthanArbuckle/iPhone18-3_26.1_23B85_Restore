@interface AutocompleteStringMatcher
- (AutocompleteStringMatcher)init;
- (AutocompleteStringMatcher)initWithPlaceAddress:(id)a3 matchInfo:(id)a4;
- (AutocompleteStringMatcher)initWithString:(id)a3 requiredMatchLength:(unint64_t)a4 matchInfo:(id)a5;
- (id)matchForAutocompleteSearchString:(id)a3;
@end

@implementation AutocompleteStringMatcher

- (id)matchForAutocompleteSearchString:(id)a3
{
  v4 = a3;
  if (-[NSString length](self->_string, "length") && [v4 length])
  {
    v5 = [v4 _navigation_isCJK];
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = [v4 stringByTrimmingCharactersInSet:v6];
    v8 = [v7 componentsSeparatedByCharactersInSet:v6];

    if ([v8 count])
    {
      v9 = [(NSString *)self->_string componentsSeparatedByCharactersInSet:v6];
      v10 = [v9 mutableCopy];

      v20 = [v10 count];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v11)
      {
        v12 = v5 ^ 1;
        v13 = *v33;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            v28 = 0;
            v29 = &v28;
            v30 = 0x2020000000;
            v31 = 0;
            v24 = 0;
            v25 = &v24;
            v26 = 0x2020000000;
            v27 = 0x7FFFFFFFFFFFFFFFLL;
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_1008D9768;
            v22[3] = &unk_10162DC00;
            v23 = v12;
            v22[4] = v15;
            v22[5] = &v28;
            v22[6] = &v40;
            v22[7] = &v24;
            v22[8] = &v36;
            [v10 enumerateObjectsUsingBlock:{v22, v20}];
            if (*(v29 + 24) != 1)
            {
              _Block_object_dispose(&v24, 8);
              _Block_object_dispose(&v28, 8);

              goto LABEL_17;
            }

            [v10 removeObjectsInRange:{0, v25[3] + 1}];
            _Block_object_dispose(&v24, 8);
            _Block_object_dispose(&v28, 8);
          }

          v11 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if (v41[3] < self->_requiredMatchLength)
      {
LABEL_17:
        v17 = 0;
      }

      else
      {
        v16 = [(AutocompleteStringMatcher *)self matchInfo];
        v17 = [v16 copy];

        if (v20)
        {
          v18 = v37[3] / v20;
          v37[3] = v18;
        }

        else
        {
          v18 = v37[3];
        }

        [v17 setFractionOfMatch:{v18, v20}];
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v40, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (AutocompleteStringMatcher)initWithPlaceAddress:(id)a3 matchInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 _navigation_isCJK])
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = [(AutocompleteStringMatcher *)self initWithString:v7 requiredMatchLength:v8 matchInfo:v6];

  return v9;
}

- (AutocompleteStringMatcher)initWithString:(id)a3 requiredMatchLength:(unint64_t)a4 matchInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AutocompleteStringMatcher;
  v11 = [(AutocompleteStringMatcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_string, a3);
    v12->_requiredMatchLength = a4;
    objc_storeStrong(&v12->_matchInfo, a5);
  }

  return v12;
}

- (AutocompleteStringMatcher)init
{
  [(AutocompleteStringMatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end