@interface MPAVRoute
+ (id)clusterCompositionForOutputDevice:(id)device;
+ (int64_t)clusterTypeForMRClusterType:(unsigned int)type;
+ (int64_t)routeSubtypeForMRSubtype:(unsigned int)subtype mrType:(unsigned int)type;
+ (int64_t)routeSubtypeForMRSubtype:(unsigned int)subtype withOverridesFromMRType:(unsigned int)type;
- (BOOL)containsDeviceWithSubtype:(int64_t)subtype;
- (BOOL)isAirpodsRoute;
- (BOOL)isAppleTVRoute;
- (BOOL)isB298Route;
- (BOOL)isB364Route;
- (BOOL)isB372Route;
- (BOOL)isB419Route;
- (BOOL)isB444Route;
- (BOOL)isB465Route;
- (BOOL)isB494BRoute;
- (BOOL)isB494Route;
- (BOOL)isB498Route;
- (BOOL)isB507Route;
- (BOOL)isB515Route;
- (BOOL)isB607Route;
- (BOOL)isB688Route;
- (BOOL)isB698CRoute;
- (BOOL)isB698Route;
- (BOOL)isB735ERoute;
- (BOOL)isB735MRoute;
- (BOOL)isB768CHERoute;
- (BOOL)isB768CHMRoute;
- (BOOL)isB768ERoute;
- (BOOL)isB768MRoute;
- (BOOL)isBeatsLegacyRoute;
- (BOOL)isBeatsRoute;
- (BOOL)isBeatsSoloRoute;
- (BOOL)isBeatsStudioProRoute;
- (BOOL)isBeatsStudioRoute;
- (BOOL)isBeatsXRoute;
- (BOOL)isDeviceRoute;
- (BOOL)isDisplayedAsPicked;
- (BOOL)isEqual:(id)equal;
- (BOOL)isH1Route;
- (BOOL)isHearingDeviceRoute;
- (BOOL)isHomeTheaterB520Route;
- (BOOL)isJ327Route;
- (BOOL)isPhoneRoute;
- (BOOL)isPowerbeatsRoute;
- (BOOL)isShareableRoute;
- (BOOL)isSubRoute;
- (BOOL)isTVRoute;
- (BOOL)isW1Route;
- (BOOL)isW3Route;
- (MPAVRoute)parentRoute;
- (NSArray)routeNames;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)setAVRouteDescription:(id)description;
- (void)setRouteName:(id)name;
@end

@implementation MPAVRoute

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  routeName = [(MPAVRoute *)self routeName];
  routeUID = [(MPAVRoute *)self routeUID];
  routeType = [(MPAVRoute *)self routeType];
  if (routeType > 3)
  {
    v8 = @"Undefined";
  }

  else
  {
    v8 = off_1E7676B20[routeType];
  }

  routeSubtype = [(MPAVRoute *)self routeSubtype];
  if (routeSubtype > 0x1B)
  {
    v10 = @"Undefined";
  }

  else
  {
    v10 = off_1E7676A40[routeSubtype];
  }

  v11 = v10;
  v12 = [v3 stringWithFormat:@"<%@: %p name=%@ uid=%@ type=%@ subtype=%@>", v4, self, routeName, routeUID, v8, v11];

  return v12;
}

- (unint64_t)hash
{
  routeUID = [(MPAVRoute *)self routeUID];
  routeName = [(MPAVRoute *)self routeName];
  routeType = [(MPAVRoute *)self routeType];
  routeSubtype = [(MPAVRoute *)self routeSubtype];
  if (routeUID && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [routeUID hash];
  }

  else if (routeName && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = routeSubtype + routeType + [routeName hash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isBeatsLegacyRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier componentsSeparatedByString:{@", "}];
  firstObject = [v3 firstObject];

  if (firstObject)
  {
    if ([firstObject containsString:@"10507"])
    {
      v5 = 1;
    }

    else
    {
      v5 = [firstObject containsString:@"204"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isB372Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8208"}];

  return v3;
}

- (BOOL)isB364Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8205"}];

  return v3;
}

- (BOOL)isB444Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8203"}];

  return v3;
}

- (BOOL)isPowerbeatsRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8195"}];

  return v3;
}

- (BOOL)isB607Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8214"}];

  return v3;
}

- (BOOL)isB498Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8221"}];

  return v3;
}

- (BOOL)isB494Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8210"}];

  return v3;
}

- (BOOL)isBeatsXRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8197"}];

  return v3;
}

- (BOOL)isBeatsStudioRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8201"}];

  return v3;
}

- (BOOL)isB507Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8209"}];

  return v3;
}

- (BOOL)isAirpodsRoute
{
  v2 = MEMORY[0x1E69B09D0];
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  LOBYTE(v2) = [v2 isAirPodsDeviceWithModelID:productIdentifier];

  return v2;
}

- (BOOL)isB298Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8206"}];

  return v3;
}

- (BOOL)isB698CRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8228"}];

  return v3;
}

- (BOOL)isB515Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8202"}];

  return v3;
}

- (BOOL)isB688Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8211"}];

  return v3;
}

- (BOOL)isB698Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8212"}];

  return v3;
}

- (BOOL)isB419Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8204"}];

  return v3;
}

- (BOOL)isBeatsSoloRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8198"}];

  return v3;
}

- (BOOL)isB735MRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 5024"}];

  return v3;
}

- (BOOL)isB735ERoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 5023"}];

  return v3;
}

- (BOOL)isB768CHMRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8224"}];

  return v3;
}

- (BOOL)isB768ERoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8217"}];

  return v3;
}

- (BOOL)isB768CHERoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8222"}];

  return v3;
}

- (BOOL)isB768MRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8219"}];

  return v3;
}

- (BOOL)isHearingDeviceRoute
{
  routeUID = [(MPAVRoute *)self routeUID];
  v3 = [routeUID containsString:@"-tlea"];

  return v3;
}

- (BOOL)isH1Route
{
  v2 = MEMORY[0x1E69B09D0];
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  LOBYTE(v2) = [v2 isW2DeviceWithModelID:productIdentifier];

  return v2;
}

- (BOOL)isW1Route
{
  v2 = MEMORY[0x1E69B09D0];
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  LOBYTE(v2) = [v2 isW1DeviceWithModelID:productIdentifier];

  return v2;
}

- (MPAVRoute)parentRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRoute);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    routeUID = [(MPAVRoute *)self routeUID];
    routeName = [(MPAVRoute *)self routeName];
    routeType = [(MPAVRoute *)self routeType];
    routeSubtype = [(MPAVRoute *)self routeSubtype];
    if ([routeUID length])
    {
      if ([routeUID length])
      {
        routeUID2 = [v5 routeUID];
        v11 = routeUID;
LABEL_5:
        v12 = [v11 isEqualToString:routeUID2];

LABEL_11:
        goto LABEL_12;
      }
    }

    else if (routeType == [v5 routeType] && routeSubtype == objc_msgSend(v5, "routeSubtype"))
    {
      routeUID2 = [v5 routeName];
      v11 = routeName;
      goto LABEL_5;
    }

    v12 = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = MPAVRoute;
  v12 = [(MPAVRoute *)&v14 isEqual:equalCopy];
LABEL_12:

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  routeName = [(MPAVRoute *)self routeName];
  if ([(MPAVRoute *)self isPicked])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  routeUID = [(MPAVRoute *)self routeUID];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@, picked=%@ uid=%@>", v4, self, routeName, v6, routeUID];

  wirelessDisplayRoute = self->_wirelessDisplayRoute;
  if (wirelessDisplayRoute)
  {
    v10 = [(MPAVRoute *)wirelessDisplayRoute description];
    v11 = [v8 stringByAppendingFormat:@"\n\t| Mirroring Route: %@", v10];

    v8 = v11;
  }

  return v8;
}

- (BOOL)isSubRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRoute);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)containsDeviceWithSubtype:(int64_t)subtype
{
  if ([(MPAVRoute *)self originalRouteSubtype]== subtype)
  {
    return 1;
  }

  clusterComposition = [(MPAVRoute *)self clusterComposition];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__MPAVRoute_containsDeviceWithSubtype___block_invoke;
  v10[3] = &__block_descriptor_40_e54_B24__0__MPAVOutputDeviceDescription_8__NSDictionary_16l;
  v10[4] = subtype;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v10];
  v8 = [clusterComposition filteredArrayUsingPredicate:v7];
  v5 = [v8 count] != 0;

  return v5;
}

- (BOOL)isPhoneRoute
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MPAVRoute isPhoneRoute]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)isTVRoute
{
  if ([(MPAVRoute *)self isAppleTVRoute]|| [(MPAVRoute *)self routeSubtype]== 16 || [(MPAVRoute *)self isTVStickRoute])
  {
    return 1;
  }

  return [(MPAVRoute *)self isSetTopBoxRoute];
}

- (BOOL)isHomeTheaterB520Route
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  clusterComposition = [(MPAVRoute *)self clusterComposition];
  v4 = [clusterComposition countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(clusterComposition);
        }

        if (v6)
        {
          v6 = 1;
        }

        else
        {
          modelID = [*(*(&v11 + 1) + 8 * i) modelID];
          v6 = [modelID containsString:@"AudioAccessory5"];
        }
      }

      v5 = [clusterComposition countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return [(MPAVRoute *)self isHomeTheaterRoute]& v6;
}

- (BOOL)isJ327Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:@"j327"];

  return v3;
}

- (BOOL)isB494BRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8239"}];

  return v3;
}

- (BOOL)isBeatsStudioProRoute
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8215"}];

  return v3;
}

- (BOOL)isB465Route
{
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  v3 = [productIdentifier containsString:{@"76, 8229"}];

  return v3;
}

- (BOOL)isBeatsRoute
{
  v2 = MEMORY[0x1E69B09D0];
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  LOBYTE(v2) = [v2 isBeatsDeviceWithModelID:productIdentifier];

  return v2;
}

- (BOOL)isW3Route
{
  v2 = MEMORY[0x1E69B09D0];
  productIdentifier = [(MPAVRoute *)self productIdentifier];
  LOBYTE(v2) = [v2 isW3DeviceWithModelID:productIdentifier];

  return v2;
}

- (BOOL)isShareableRoute
{
  if ([(MPAVRoute *)self isAirpodsRoute]|| [(MPAVRoute *)self isW1Route])
  {
    return 1;
  }

  return [(MPAVRoute *)self isH1Route];
}

- (BOOL)isDisplayedAsPicked
{
  if ([(MPAVRoute *)self isPicked]|| [(MPAVRoute *)self->_wirelessDisplayRoute isPicked])
  {
    return 1;
  }

  return [(MPAVRoute *)self isPickedOnPairedDevice];
}

- (BOOL)isDeviceRoute
{
  routeSubtype = [(MPAVRoute *)self routeSubtype];
  if (routeSubtype != 1)
  {
    LOBYTE(routeSubtype) = [(MPAVRoute *)self routeSubtype]== 2;
  }

  return routeSubtype;
}

- (BOOL)isAppleTVRoute
{
  routeType = [(MPAVRoute *)self routeType];
  if (routeType != 1)
  {
    LOBYTE(routeType) = [(MPAVRoute *)self routeType]== 2;
  }

  return routeType;
}

- (void)setAVRouteDescription:(id)description
{
  v4 = [description copy];
  avRouteDescription = self->_avRouteDescription;
  self->_avRouteDescription = v4;
}

- (void)setRouteName:(id)name
{
  v4 = [name copy];
  routeName = self->_routeName;
  self->_routeName = v4;
}

- (NSArray)routeNames
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_routeName)
  {
    v4[0] = self->_routeName;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

+ (int64_t)clusterTypeForMRClusterType:(unsigned int)type
{
  if (type - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A273DEA8[type - 1];
  }
}

+ (id)clusterCompositionForOutputDevice:(id)device
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy deviceSubtype] == 15)
  {
    v4 = MEMORY[0x1E695DF70];
    clusterComposition = [deviceCopy clusterComposition];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(clusterComposition, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [deviceCopy clusterComposition];
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [MPAVOutputDeviceDescription alloc];
          v13 = [objc_opt_class() routeSubtypeForMRSubtype:objc_msgSend(v11 mrType:{"deviceSubtype"), objc_msgSend(v11, "deviceType")}];
          v14 = [v11 uid];
          modelID = [v11 modelID];
          v16 = [(MPAVOutputDeviceDescription *)v12 initWithDeviceType:0 deviceSubtype:v13 uid:v14 modelID:modelID];

          [v6 addObject:v16];
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)routeSubtypeForMRSubtype:(unsigned int)subtype mrType:(unsigned int)type
{
  switch(subtype)
  {
    case 1u:
      v4 = 9;
      if (type != 1)
      {
        v4 = 1;
      }

      v5 = type == 2;
      v6 = 21;
      goto LABEL_16;
    case 2u:
      v5 = type == 2;
      v4 = 2;
      v6 = 11;
      goto LABEL_16;
    case 3u:
      v5 = type == 2;
      v4 = 3;
      v6 = 12;
LABEL_16:
      if (v5)
      {
        result = v6;
      }

      else
      {
        result = v4;
      }

      break;
    case 4u:
      result = 4;
      break;
    case 5u:
      result = 5;
      break;
    case 6u:
      result = 7;
      break;
    case 7u:
      result = 8;
      break;
    case 8u:
      result = 10;
      break;
    case 9u:
      result = 13;
      break;
    case 0xAu:
      result = 14;
      break;
    case 0xBu:
      result = 16;
      break;
    case 0xCu:
      result = 17;
      break;
    case 0xDu:
      result = 18;
      break;
    case 0xEu:
      result = 19;
      break;
    case 0xFu:
      result = 20;
      break;
    case 0x10u:
      result = 22;
      break;
    case 0x11u:
      result = 23;
      break;
    case 0x12u:
      result = 24;
      break;
    case 0x13u:
      result = 25;
      break;
    case 0x14u:
      result = 26;
      break;
    case 0x15u:
      result = 27;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

+ (int64_t)routeSubtypeForMRSubtype:(unsigned int)subtype withOverridesFromMRType:(unsigned int)type
{
  if (subtype == 11 || (type & 0xFFFFFFFD) != 1)
  {
    return [self routeSubtypeForMRSubtype:? mrType:?];
  }

  v4 = 9;
  if (type == 3)
  {
    v4 = 15;
  }

  if (type == 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

@end