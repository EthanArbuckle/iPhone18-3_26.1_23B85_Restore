@interface RAPTransitLine
+ (id)transitLinesOnRoutes:(id)routes;
- (BOOL)isEqual:(id)equal;
- (NSString)displayName;
- (id)_initWithName:(id)name systemName:(id)systemName artworkData:(id)data lineFeatureID:(unint64_t)d;
- (id)_initWithName:(id)name systemName:(id)systemName artworkData:(id)data lineFeatureID:(unint64_t)d primaryDescriptionText:(id)text secondaryDescriptionText:(id)descriptionText;
- (id)_initWithTransitLine:(id)line;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RAPTransitLine

- (NSString)displayName
{
  name = [(RAPTransitLine *)self name];
  v4 = [name length];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  objc_storeStrong(v5 + 2, self->_artwork);
  v8 = [(NSString *)self->_primaryDescriptionText copyWithZone:zone];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  v10 = [(NSString *)self->_secondaryDescriptionText copyWithZone:zone];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  *(v5 + 5) = self->_lineFeatureID;
  v12 = [(NSString *)self->_systemName copyWithZone:zone];
  v13 = *(v5 + 6);
  *(v5 + 6) = v12;

  return v5;
}

- (unint64_t)hash
{
  lineFeatureID = [(RAPTransitLine *)self lineFeatureID];
  name = [(RAPTransitLine *)self name];
  v5 = [name hash];

  return v5 ^ lineFeatureID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lineFeatureID = [(RAPTransitLine *)self lineFeatureID];
      lineFeatureID2 = [(RAPTransitLine *)equalCopy lineFeatureID];
      name = [(RAPTransitLine *)self name];
      name2 = [(RAPTransitLine *)equalCopy name];
      if ([name isEqualToString:name2])
      {
        v9 = 1;
      }

      else
      {
        name3 = [(RAPTransitLine *)self name];
        if (name3)
        {
          v9 = 0;
        }

        else
        {
          name4 = [(RAPTransitLine *)equalCopy name];
          v9 = name4 == 0;
        }
      }

      v10 = lineFeatureID == lineFeatureID2 && v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_initWithName:(id)name systemName:(id)systemName artworkData:(id)data lineFeatureID:(unint64_t)d primaryDescriptionText:(id)text secondaryDescriptionText:(id)descriptionText
{
  nameCopy = name;
  systemNameCopy = systemName;
  dataCopy = data;
  textCopy = text;
  descriptionTextCopy = descriptionText;
  v29.receiver = self;
  v29.super_class = RAPTransitLine;
  v19 = [(RAPTransitLine *)&v29 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [systemNameCopy copy];
    systemName = v19->_systemName;
    v19->_systemName = v22;

    objc_storeStrong(&v19->_artwork, data);
    v19->_lineFeatureID = d;
    v24 = [textCopy copy];
    primaryDescriptionText = v19->_primaryDescriptionText;
    v19->_primaryDescriptionText = v24;

    v26 = [descriptionTextCopy copy];
    secondaryDescriptionText = v19->_secondaryDescriptionText;
    v19->_secondaryDescriptionText = v26;
  }

  return v19;
}

- (id)_initWithName:(id)name systemName:(id)systemName artworkData:(id)data lineFeatureID:(unint64_t)d
{
  if (name)
  {
    systemNameCopy = name;
  }

  else
  {
    systemNameCopy = systemName;
  }

  return [(RAPTransitLine *)self _initWithName:name systemName:systemName artworkData:data lineFeatureID:d primaryDescriptionText:systemNameCopy secondaryDescriptionText:0];
}

- (id)_initWithTransitLine:(id)line
{
  lineCopy = line;
  name = [lineCopy name];
  system = [lineCopy system];
  name2 = [system name];
  artwork = [lineCopy artwork];
  muid = [lineCopy muid];

  v10 = [(RAPTransitLine *)self _initWithName:name systemName:name2 artworkData:artwork lineFeatureID:muid];
  return v10;
}

+ (id)transitLinesOnRoutes:(id)routes
{
  routesCopy = routes;
  v4 = objc_alloc_init(NSMutableSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = routesCopy;
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
        transitLinesOnRoute = [v9 transitLinesOnRoute];
        v11 = [transitLinesOnRoute countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(transitLinesOnRoute);
              }

              v15 = [[RAPTransitLine alloc] _initWithTransitLine:*(*(&v19 + 1) + 8 * j)];
              [v4 addObject:v15];
            }

            v12 = [transitLinesOnRoute countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

@end