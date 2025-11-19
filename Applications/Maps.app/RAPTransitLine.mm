@interface RAPTransitLine
+ (id)transitLinesOnRoutes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)displayName;
- (id)_initWithName:(id)a3 systemName:(id)a4 artworkData:(id)a5 lineFeatureID:(unint64_t)a6;
- (id)_initWithName:(id)a3 systemName:(id)a4 artworkData:(id)a5 lineFeatureID:(unint64_t)a6 primaryDescriptionText:(id)a7 secondaryDescriptionText:(id)a8;
- (id)_initWithTransitLine:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RAPTransitLine

- (NSString)displayName
{
  v3 = [(RAPTransitLine *)self name];
  v4 = [v3 length];

  if (v4)
  {
    [(RAPTransitLine *)self name];
  }

  else
  {
    [(RAPTransitLine *)self systemName];
  }
  v5 = ;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  objc_storeStrong(v5 + 2, self->_artwork);
  v8 = [(NSString *)self->_primaryDescriptionText copyWithZone:a3];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  v10 = [(NSString *)self->_secondaryDescriptionText copyWithZone:a3];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  *(v5 + 5) = self->_lineFeatureID;
  v12 = [(NSString *)self->_systemName copyWithZone:a3];
  v13 = *(v5 + 6);
  *(v5 + 6) = v12;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RAPTransitLine *)self lineFeatureID];
  v4 = [(RAPTransitLine *)self name];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RAPTransitLine *)self lineFeatureID];
      v6 = [(RAPTransitLine *)v4 lineFeatureID];
      v7 = [(RAPTransitLine *)self name];
      v8 = [(RAPTransitLine *)v4 name];
      if ([v7 isEqualToString:v8])
      {
        v9 = 1;
      }

      else
      {
        v11 = [(RAPTransitLine *)self name];
        if (v11)
        {
          v9 = 0;
        }

        else
        {
          v12 = [(RAPTransitLine *)v4 name];
          v9 = v12 == 0;
        }
      }

      v10 = v5 == v6 && v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_initWithName:(id)a3 systemName:(id)a4 artworkData:(id)a5 lineFeatureID:(unint64_t)a6 primaryDescriptionText:(id)a7 secondaryDescriptionText:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v29.receiver = self;
  v29.super_class = RAPTransitLine;
  v19 = [(RAPTransitLine *)&v29 init];
  if (v19)
  {
    v20 = [v14 copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [v15 copy];
    systemName = v19->_systemName;
    v19->_systemName = v22;

    objc_storeStrong(&v19->_artwork, a5);
    v19->_lineFeatureID = a6;
    v24 = [v17 copy];
    primaryDescriptionText = v19->_primaryDescriptionText;
    v19->_primaryDescriptionText = v24;

    v26 = [v18 copy];
    secondaryDescriptionText = v19->_secondaryDescriptionText;
    v19->_secondaryDescriptionText = v26;
  }

  return v19;
}

- (id)_initWithName:(id)a3 systemName:(id)a4 artworkData:(id)a5 lineFeatureID:(unint64_t)a6
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  return [(RAPTransitLine *)self _initWithName:a3 systemName:a4 artworkData:a5 lineFeatureID:a6 primaryDescriptionText:v6 secondaryDescriptionText:0];
}

- (id)_initWithTransitLine:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 system];
  v7 = [v6 name];
  v8 = [v4 artwork];
  v9 = [v4 muid];

  v10 = [(RAPTransitLine *)self _initWithName:v5 systemName:v7 artworkData:v8 lineFeatureID:v9];
  return v10;
}

+ (id)transitLinesOnRoutes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 transitLinesOnRoute];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [[RAPTransitLine alloc] _initWithTransitLine:*(*(&v19 + 1) + 8 * j)];
              [v4 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = [v4 allObjects];

  return v16;
}

@end