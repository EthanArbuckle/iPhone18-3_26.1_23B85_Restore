@interface CBAccessoryLogging
+ (id)getComponentNameFromProductID:(unint64_t)a3;
+ (id)getComponentNameFromRadarReason:(int)a3;
+ (id)getComponentVersionFromProductID:(unint64_t)a3;
+ (id)getComponentVersionFromRadarReason:(int)a3;
+ (id)getProductNameFromProductID:(unint64_t)a3;
+ (unint64_t)getComponentIDFromProductID:(unint64_t)a3;
+ (unint64_t)getComponentIDFromRadarReason:(int)a3;
@end

@implementation CBAccessoryLogging

+ (id)getProductNameFromProductID:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MobileBluetooth"];
  v5 = a3 - 8194;
  v6 = @"Beats Studio Pro";
  switch(v5)
  {
    case 0uLL:
      v9 = @"AIRPODS";
      v10 = @"AirPods";
      goto LABEL_40;
    case 1uLL:
      v9 = @"POWERBEATS3";
      v10 = @"Powerbeats³";
      goto LABEL_40;
    case 3uLL:
      v9 = @"BEATSX";
      v10 = @"Beatsˣ";
      goto LABEL_40;
    case 4uLL:
      v9 = @"SOLO3";
      v10 = @"Beats Solo³";
      goto LABEL_40;
    case 7uLL:
      v9 = @"BEATSSTUDIO3";
      v10 = @"Beats Studio³";
      goto LABEL_40;
    case 8uLL:
    case 0x1DuLL:

      v7 = @"AirPods Max";

      return v7;
    case 9uLL:
      v9 = @"POWERBEATSPRO";
      v10 = @"PowerBeats Pro";
      goto LABEL_40;
    case 0xAuLL:
      v9 = @"SOLOPRO";
      v10 = @"Beats Solo Pro";
LABEL_40:
      v11 = v4;
      v12 = [v4 localizedStringForKey:v9 value:v10 table:0];

      v7 = v12;

      return v7;
    case 0xBuLL:

      v7 = @"Powerbeats 4";

      return v7;
    case 0xCuLL:
    case 0x12uLL:
    case 0x22uLL:
    case 0x25uLL:
    case 0x26uLL:

      v7 = @"AirPods Pro";

      return v7;
    case 0xDuLL:

      v7 = @"AirPods 2";

      return v7;
    case 0xEuLL:

      v7 = @"Beats Flex";

      return v7;
    case 0xFuLL:

      v7 = @"Beats Studio Buds";

      return v7;
    case 0x11uLL:

      v7 = @"AirPods 3";

      return v7;
    case 0x13uLL:
    case 0x16uLL:
    case 0x1AuLL:
    case 0x27uLL:

      v7 = @"AirPods Case";

      return v7;
    case 0x14uLL:

      v7 = @"Beats Studio Buds +";

      return v7;
    case 0x15uLL:
      goto LABEL_9;
    case 0x17uLL:
    case 0x19uLL:
    case 0x1CuLL:
    case 0x1EuLL:
      v6 = @"AirPods";
LABEL_9:

      v7 = v6;

      break;
    default:

      v7 = @"Unknown";

      break;
  }

  return v7;
}

+ (unint64_t)getComponentIDFromProductID:(unint64_t)a3
{
  if (a3 - 8194 > 0x2D)
  {
    return 1210810;
  }

  else
  {
    return qword_1C0B82D48[a3 - 8194];
  }
}

+ (id)getComponentNameFromProductID:(unint64_t)a3
{
  if (a3 - 8194 > 0x2D)
  {
    return @"AudioProducts FW";
  }

  else
  {
    return off_1E811E070[a3 - 8194];
  }
}

+ (id)getComponentVersionFromProductID:(unint64_t)a3
{
  if (a3 - 8194 > 0x2D)
  {
    return @"All";
  }

  else
  {
    return off_1E811E1E0[a3 - 8194];
  }
}

+ (unint64_t)getComponentIDFromRadarReason:(int)a3
{
  if (a3 == 5)
  {
    return 1046269;
  }

  else
  {
    return 1210810;
  }
}

+ (id)getComponentNameFromRadarReason:(int)a3
{
  if (a3 == 5)
  {
    return @"SpockEngine";
  }

  else
  {
    return @"AudioProducts FW";
  }
}

+ (id)getComponentVersionFromRadarReason:(int)a3
{
  if (a3 == 5)
  {
    return @"New Bugs";
  }

  else
  {
    return @"All";
  }
}

@end