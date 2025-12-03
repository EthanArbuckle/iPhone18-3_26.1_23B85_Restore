@interface SAGKPropertyPod
- (id)_convertedCardSections;
@end

@implementation SAGKPropertyPod

- (id)_convertedCardSections
{
  v19 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(SAGKPropertyPod *)self propertyList];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = objc_alloc_init(SFRowCardSection);
        v8 = objc_alloc_init(SFRichText);
        name = [v6 name];
        [v8 setText:name];

        [v7 setLeadingText:v8];
        v10 = objc_alloc_init(SFRichText);
        valueAnnotation = [v6 valueAnnotation];

        [v6 value];
        if (valueAnnotation)
          v12 = {;
          valueAnnotation2 = [v6 valueAnnotation];
          v14 = [NSString stringWithFormat:@"%@ %@", v12, valueAnnotation2];
        }

        else
          v14 = {;
        }

        [v10 setText:v14];
        [v7 setTrailingText:v10];
        [v19 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v15 = [v19 copy];

  return v15;
}

@end