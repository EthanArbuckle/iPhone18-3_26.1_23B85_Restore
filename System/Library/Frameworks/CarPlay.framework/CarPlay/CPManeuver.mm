@interface CPManeuver
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
+ (id)_descriptionForJunctionType:(unint64_t)a3;
+ (id)_descriptionForManeuverType:(unint64_t)a3;
+ (id)_descriptionForTrafficSide:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CPManeuver)init;
- (CPManeuver)initWithCoder:(id)a3;
- (CPManeuver)maneuverWithComponent:(id)a3;
- (NSArray)stringInstructionVariants;
- (NSMeasurement)initialDistance;
- (NSMeasurement)initialDistanceDisplay;
- (NSString)description;
- (UIImage)dashboardJunctionImage;
- (UIImage)dashboardSymbolImage;
- (UIImage)junctionImage;
- (UIImage)notificationSymbolImage;
- (UIImage)symbolImage;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCardBackgroundColor:(UIColor *)cardBackgroundColor;
- (void)setDashboardJunctionImage:(UIImage *)dashboardJunctionImage;
- (void)setDashboardSymbolImage:(UIImage *)dashboardSymbolImage;
- (void)setInitialDistance:(id)a3;
- (void)setInitialDistanceDisplay:(id)a3;
- (void)setJunctionImage:(UIImage *)junctionImage;
- (void)setNotificationSymbolImage:(UIImage *)notificationSymbolImage;
- (void)setSymbolImage:(UIImage *)symbolImage;
- (void)setSymbolSet:(CPImageSet *)symbolSet;
@end

@implementation CPManeuver

- (CPManeuver)init
{
  v7.receiver = self;
  v7.super_class = CPManeuver;
  v2 = [(CPManeuver *)&v7 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    instructionVariants = v2->_instructionVariants;
    v2->_instructionVariants = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (CPManeuver)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPManeuver *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverCardBackgroundColorKey"];
    v7 = v6;
    if (v6)
    {
      v8 = CPSanitizedBackgroundColor(v6);
      cardBackgroundColor = v5->_cardBackgroundColor;
      v5->_cardBackgroundColor = v8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverSymbolKey"];
    symbolSet = v5->_symbolSet;
    v5->_symbolSet = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"kCPManeuverAttributedInstructionVariantsKey"];
    attributedInstructionVariants = v5->_attributedInstructionVariants;
    v5->_attributedInstructionVariants = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverInitialTravelEstimatesKey"];
    initialTravelEstimates = v5->_initialTravelEstimates;
    v5->_initialTravelEstimates = v20;

    v5->_displayStyle = [v4 decodeIntegerForKey:@"kCPManeuverStyleKey"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverJunctionImageKey"];
    junctionImageSet = v5->_junctionImageSet;
    v5->_junctionImageSet = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverDashboardSymbolKey"];
    dashboardSymbolImageSet = v5->_dashboardSymbolImageSet;
    v5->_dashboardSymbolImageSet = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"kCPManeuverDashboardInstructionVariantsKey"];
    dashboardInstructionVariants = v5->_dashboardInstructionVariants;
    v5->_dashboardInstructionVariants = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"kCPManeuverDashboardAttributedInstructionVariantsKey"];
    dashboardAttributedInstructionVariants = v5->_dashboardAttributedInstructionVariants;
    v5->_dashboardAttributedInstructionVariants = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverDashboardJunctionImageKey"];
    dashboardJunctionImageSet = v5->_dashboardJunctionImageSet;
    v5->_dashboardJunctionImageSet = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPManeuverNotificationSymbolKey"];
    notificationSymbolImageSet = v5->_notificationSymbolImageSet;
    v5->_notificationSymbolImageSet = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [v4 decodeObjectOfClasses:v43 forKey:@"kCPManeuverNotificationInstructionVariantsKey"];
    notificationInstructionVariants = v5->_notificationInstructionVariants;
    v5->_notificationInstructionVariants = v44;

    v46 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"kCPManeuverNotificationAttributedInstructionVariantsKey"];
    notificationAttributedInstructionVariants = v5->_notificationAttributedInstructionVariants;
    v5->_notificationAttributedInstructionVariants = v50;

    [CPAccNavUpdate decodeUpdate:v5 withCoder:v4];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(CPManeuver *)self cardBackgroundColor];
  [v17 encodeObject:v4 forKey:@"kCPManeuverCardBackgroundColorKey"];

  v5 = [(CPManeuver *)self identifier];
  [v17 encodeObject:v5 forKey:@"kCPIdentifierKey"];

  v6 = [(CPManeuver *)self symbolSet];
  [v17 encodeObject:v6 forKey:@"kCPManeuverSymbolKey"];

  v7 = [(CPManeuver *)self attributedInstructionVariants];
  [v17 encodeObject:v7 forKey:@"kCPManeuverAttributedInstructionVariantsKey"];

  v8 = [(CPManeuver *)self initialTravelEstimates];
  [v17 encodeObject:v8 forKey:@"kCPManeuverInitialTravelEstimatesKey"];

  [v17 encodeInteger:-[CPManeuver displayStyle](self forKey:{"displayStyle"), @"kCPManeuverStyleKey"}];
  v9 = [(CPManeuver *)self junctionImageSet];
  [v17 encodeObject:v9 forKey:@"kCPManeuverJunctionImageKey"];

  v10 = [(CPManeuver *)self dashboardSymbolImageSet];
  [v17 encodeObject:v10 forKey:@"kCPManeuverDashboardSymbolKey"];

  v11 = [(CPManeuver *)self dashboardInstructionVariants];
  [v17 encodeObject:v11 forKey:@"kCPManeuverDashboardInstructionVariantsKey"];

  v12 = [(CPManeuver *)self dashboardAttributedInstructionVariants];
  [v17 encodeObject:v12 forKey:@"kCPManeuverDashboardAttributedInstructionVariantsKey"];

  v13 = [(CPManeuver *)self dashboardJunctionImageSet];
  [v17 encodeObject:v13 forKey:@"kCPManeuverDashboardJunctionImageKey"];

  v14 = [(CPManeuver *)self notificationSymbolImageSet];
  [v17 encodeObject:v14 forKey:@"kCPManeuverNotificationSymbolKey"];

  v15 = [(CPManeuver *)self notificationInstructionVariants];
  [v17 encodeObject:v15 forKey:@"kCPManeuverNotificationInstructionVariantsKey"];

  v16 = [(CPManeuver *)self notificationAttributedInstructionVariants];
  [v17 encodeObject:v16 forKey:@"kCPManeuverNotificationAttributedInstructionVariantsKey"];

  [CPAccNavUpdate encodeUpdate:self withCoder:v17];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CPAccNavUpdate copyUpdate:self];
  v5 = [(CPManeuver *)self identifier];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(CPManeuver *)self symbolSet];
  [v4 setSymbolSet:v7];

  v8 = [(CPManeuver *)self junctionImageSet];
  [v4 setJunctionImageSet:v8];

  v9 = [(CPManeuver *)self attributedInstructionVariants];
  [v4 setAttributedInstructionVariants:v9];

  v10 = [(CPManeuver *)self initialTravelEstimates];
  [v4 setInitialTravelEstimates:v10];

  [v4 setDisplayStyle:{-[CPManeuver displayStyle](self, "displayStyle")}];
  v11 = [(CPManeuver *)self dashboardSymbolImageSet];
  [v4 setDashboardSymbolImageSet:v11];

  v12 = [(CPManeuver *)self dashboardInstructionVariants];
  [v4 setDashboardInstructionVariants:v12];

  v13 = [(CPManeuver *)self dashboardAttributedInstructionVariants];
  [v4 setDashboardAttributedInstructionVariants:v13];

  v14 = [(CPManeuver *)self dashboardJunctionImageSet];
  [v4 setDashboardJunctionImageSet:v14];

  v15 = [(CPManeuver *)self notificationSymbolImageSet];
  [v4 setNotificationSymbolImageSet:v15];

  v16 = [(CPManeuver *)self notificationInstructionVariants];
  [v4 setNotificationInstructionVariants:v16];

  v17 = [(CPManeuver *)self notificationAttributedInstructionVariants];
  [v4 setNotificationAttributedInstructionVariants:v17];

  v18 = [(CPManeuver *)self cardBackgroundColor];
  [v4 setCardBackgroundColor:v18];

  return v4;
}

- (NSArray)stringInstructionVariants
{
  v3 = [(CPManeuver *)self attributedInstructionVariants];

  if (v3)
  {
    v4 = [(CPManeuver *)self attributedInstructionVariants];
    v5 = [v4 cps_map:&__block_literal_global_12];
  }

  else
  {
    v5 = [(CPManeuver *)self instructionVariants];
  }

  return v5;
}

- (NSString)description
{
  v20 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = CPManeuver;
  v3 = [(CPManeuver *)&v21 description];
  identifier = self->_identifier;
  v19 = v3;
  v4 = [objc_opt_class() _descriptionForManeuverType:self->_maneuverType];
  symbolSet = self->_symbolSet;
  initialTravelEstimates = self->_initialTravelEstimates;
  attributedInstructionVariants = self->_attributedInstructionVariants;
  junctionImageSet = self->_junctionImageSet;
  roadFollowingManeuverVariants = self->_roadFollowingManeuverVariants;
  instructionVariants = self->_instructionVariants;
  v8 = [objc_opt_class() _descriptionForTrafficSide:self->_trafficSide];
  v9 = [objc_opt_class() _descriptionForJunctionType:self->_junctionType];
  junctionExitAngle = self->_junctionExitAngle;
  junctionElementAngles = self->_junctionElementAngles;
  v12 = [CPAccNavUpdate description:self];
  v13 = [v20 stringWithFormat:@"%@ {identifier: %@, maneuverType: %@, symbol: %@, junction image: %@, instructionVariants: %@, attributedInstructionVariants: %@, roadFollowingManeuverVariants:%@, initialTravelEstimates: %@, trafficSide: %@, junctionType: %@, junctionExitAngle: %@, junctionElementAngles: %@, cardBackgroundColor: %@}\n{\n%@\n}", v19, identifier, v4, symbolSet, junctionImageSet, instructionVariants, attributedInstructionVariants, roadFollowingManeuverVariants, initialTravelEstimates, v8, v9, junctionExitAngle, junctionElementAngles, v12, self->_cardBackgroundColor];

  return v13;
}

+ (id)_descriptionForManeuverType:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_278A11388[a3];
  }
}

+ (id)_descriptionForTrafficSide:(unint64_t)a3
{
  v3 = @"right";
  if (a3)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"left";
  }

  else
  {
    return v3;
  }
}

+ (id)_descriptionForJunctionType:(unint64_t)a3
{
  v3 = @"intersection";
  if (a3)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"roundabout";
  }

  else
  {
    return v3;
  }
}

- (void)setCardBackgroundColor:(UIColor *)cardBackgroundColor
{
  if (self->_cardBackgroundColor != cardBackgroundColor)
  {
    v5 = CPSanitizedBackgroundColor(cardBackgroundColor);
    v6 = self->_cardBackgroundColor;
    self->_cardBackgroundColor = v5;

    MEMORY[0x2821F96F8](v5, v6);
  }
}

- (void)setSymbolSet:(CPImageSet *)symbolSet
{
  v4 = symbolSet;
  [(CPImageSet *)v4 swapStyles];
  v5 = self->_symbolSet;
  self->_symbolSet = v4;
}

- (void)setSymbolImage:(UIImage *)symbolImage
{
  v4 = symbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  symbolSet = self->_symbolSet;
  self->_symbolSet = v4;
}

- (UIImage)symbolImage
{
  v2 = [(CPManeuver *)self symbolSet];
  v3 = [v2 image];

  return v3;
}

- (void)setJunctionImage:(UIImage *)junctionImage
{
  v4 = junctionImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  junctionImageSet = self->_junctionImageSet;
  self->_junctionImageSet = v4;
}

- (UIImage)junctionImage
{
  v2 = [(CPManeuver *)self junctionImageSet];
  v3 = [v2 image];

  return v3;
}

- (UIImage)dashboardSymbolImage
{
  v2 = [(CPManeuver *)self dashboardSymbolImageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setDashboardSymbolImage:(UIImage *)dashboardSymbolImage
{
  v4 = dashboardSymbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  dashboardSymbolImageSet = self->_dashboardSymbolImageSet;
  self->_dashboardSymbolImageSet = v4;
}

- (UIImage)dashboardJunctionImage
{
  v2 = [(CPManeuver *)self dashboardJunctionImageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setDashboardJunctionImage:(UIImage *)dashboardJunctionImage
{
  v4 = dashboardJunctionImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  dashboardJunctionImageSet = self->_dashboardJunctionImageSet;
  self->_dashboardJunctionImageSet = v4;
}

- (UIImage)notificationSymbolImage
{
  v2 = [(CPManeuver *)self notificationSymbolImageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setNotificationSymbolImage:(UIImage *)notificationSymbolImage
{
  v4 = notificationSymbolImage;
  v6 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4];
  }

  notificationSymbolImageSet = self->_notificationSymbolImageSet;
  self->_notificationSymbolImageSet = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    if (v5 == self)
    {
      v10 = 1;
    }

    else
    {
      if (!v5)
      {
        v11 = 0;
        v10 = 0;
        goto LABEL_13;
      }

      v6 = [(CPManeuver *)self junctionImage];

      v7 = [(CPManeuver *)v5 junctionImage];

      v8 = [(CPManeuver *)v5 identifier];
      v9 = [(CPManeuver *)self identifier];
      v10 = [v8 isEqual:v9] && (v6 != 0) != (v7 == 0) && +[CPAccNavUpdate isUpdate:equalTo:](CPAccNavUpdate, "isUpdate:equalTo:", self, v5);
    }

    v11 = v5;
  }

  else
  {

    v11 = 0;
    v10 = self == 0;
  }

LABEL_13:

  return v10;
}

- (NSMeasurement)initialDistance
{
  v2 = [(CPManeuver *)self initialTravelEstimates];
  v3 = [v2 distanceRemaining];

  return v3;
}

- (void)setInitialDistance:(id)a3
{
  v4 = a3;
  v5 = [CPTravelEstimates alloc];
  v6 = [(CPManeuver *)self initialTravelEstimates];
  v7 = [v6 distanceRemainingToDisplay];
  v8 = [(CPManeuver *)self initialTravelEstimates];
  [v8 timeRemaining];
  v9 = [(CPTravelEstimates *)v5 initWithDistanceRemaining:v4 distanceRemainingToDisplay:v7 timeRemaining:?];

  [(CPManeuver *)self setInitialTravelEstimates:v9];
}

- (NSMeasurement)initialDistanceDisplay
{
  v2 = [(CPManeuver *)self initialTravelEstimates];
  v3 = [v2 distanceRemainingToDisplay];

  return v3;
}

- (void)setInitialDistanceDisplay:(id)a3
{
  v4 = a3;
  v5 = [CPTravelEstimates alloc];
  v6 = [(CPManeuver *)self initialTravelEstimates];
  v7 = [v6 distanceRemaining];
  v8 = [(CPManeuver *)self initialTravelEstimates];
  [v8 timeRemaining];
  v9 = [(CPTravelEstimates *)v5 initWithDistanceRemaining:v7 distanceRemainingToDisplay:v4 timeRemaining:?];

  [(CPManeuver *)self setInitialTravelEstimates:v9];
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_0 != -1)
  {
    +[CPManeuver(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_0;

  return v3;
}

void __46__CPManeuver_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v89[13] = *MEMORY[0x277D85DE8];
  v73 = NSStringFromSelector(sel_componentID);
  v75 = [CPAccNavParamKey paramKey:0];
  v74 = [v75 copySettingIsIntegerValue:1];
  v88 = v74;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  v71 = [CPAccNavParam paramWithProperty:v73 keys:v72];
  v89[0] = v71;
  v68 = NSStringFromSelector(sel_index);
  v70 = [CPAccNavParamKey paramKey:1];
  v69 = [v70 copySettingIsIntegerValue:1];
  v87 = v69;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v66 = [CPAccNavParam paramWithProperty:v68 keys:v67];
  v89[1] = v66;
  v63 = NSStringFromSelector(sel_instructionVariants);
  v65 = [CPAccNavParamKey paramKey:2];
  v64 = [v65 copySettingHasVariants:1];
  v86 = v64;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v61 = [CPAccNavParam paramWithProperty:v63 keys:v62];
  v60 = [v61 copySettingCollectionGeneric:objc_opt_class()];
  v89[2] = v60;
  v57 = NSStringFromSelector(sel_maneuverType);
  v59 = [CPAccNavParamKey paramKey:3];
  v58 = [v59 copySettingEnumType:1];
  v85 = v58;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v55 = [CPAccNavParam paramWithProperty:v57 keys:v56];
  v89[3] = v55;
  v52 = NSStringFromSelector(sel_roadFollowingManeuverVariants);
  v54 = [CPAccNavParamKey paramKey:4];
  v53 = [v54 copySettingHasVariants:1];
  v84 = v53;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v50 = [CPAccNavParam paramWithProperty:v52 keys:v51];
  v49 = [v50 copySettingCollectionGeneric:objc_opt_class()];
  v89[4] = v49;
  v45 = NSStringFromSelector(sel_initialDistance);
  v48 = [CPAccNavParamKey paramKey:5];
  v47 = [MEMORY[0x277CCAE20] meters];
  v46 = [v48 copySettingDimension:v47];
  v83 = v46;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v43 = [CPAccNavParam paramWithProperty:v45 keys:v44];
  v42 = [v43 copySettingEncodeable:0];
  v89[5] = v42;
  v38 = NSStringFromSelector(sel_initialDistanceDisplay);
  v41 = [CPAccNavParamKey paramKey:6];
  v82[0] = v41;
  v40 = [CPAccNavParamKey paramKey:7];
  v39 = [v40 copySettingEnumType:5];
  v82[1] = v39;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v36 = [CPAccNavParam paramWithProperty:v38 keys:v37];
  v35 = [v36 copySettingEncodeable:0];
  v89[6] = v35;
  v32 = NSStringFromSelector(sel_trafficSide);
  v34 = [CPAccNavParamKey paramKey:8];
  v33 = [v34 copySettingEnumType:3];
  v81 = v33;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v30 = [CPAccNavParam paramWithProperty:v32 keys:v31];
  v89[7] = v30;
  v27 = NSStringFromSelector(sel_junctionType);
  v29 = [CPAccNavParamKey paramKey:9];
  v28 = [v29 copySettingEnumType:2];
  v80 = v28;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v25 = [CPAccNavParam paramWithProperty:v27 keys:v26];
  v89[8] = v25;
  v21 = NSStringFromSelector(sel_junctionElementAngles);
  v24 = [CPAccNavParamKey paramKey:10];
  v23 = [MEMORY[0x277CCADA8] degrees];
  v22 = [v24 copySettingDimension:v23];
  v79 = v22;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v19 = [CPAccNavParam paramWithProperty:v21 keys:v20];
  v18 = [v19 copySettingCollectionGeneric:objc_opt_class()];
  v89[9] = v18;
  v14 = NSStringFromSelector(sel_junctionExitAngle);
  v17 = [CPAccNavParamKey paramKey:11];
  v16 = [MEMORY[0x277CCADA8] degrees];
  v15 = [v17 copySettingDimension:v16];
  v78 = v15;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v12 = [CPAccNavParam paramWithProperty:v14 keys:v13];
  v89[10] = v12;
  v0 = NSStringFromSelector(sel_linkedLaneGuidanceIndex);
  v1 = [CPAccNavParamKey paramKey:12];
  v2 = [v1 copySettingIsIntegerValue:1];
  v77 = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v4 = [CPAccNavParam paramWithProperty:v0 keys:v3];
  v89[11] = v4;
  v5 = NSStringFromSelector(sel_highwayExitLabel);
  v6 = [CPAccNavParamKey paramKey:13];
  v76 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  v8 = [CPAccNavParam paramWithProperty:v5 keys:v7];
  v89[12] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:13];
  v10 = accNavParameters__accNavParameters_0;
  accNavParameters__accNavParameters_0 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CPManeuver_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accNavParametersIndexed_onceToken_0 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_0, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_0;

  return v2;
}

uint64_t __53__CPManeuver_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_0;
  accNavParametersIndexed__accNavParametersIndexed_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CPManeuver_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accNavParameterKeysIndexed_onceToken_0 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_0, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_0;

  return v2;
}

uint64_t __56__CPManeuver_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_0;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CPManeuver)maneuverWithComponent:(id)a3
{
  v4 = MEMORY[0x277CE82E8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 component];
  v8 = [v6 initWithManeuver:self component:v7];

  v9 = [objc_alloc(MEMORY[0x277CF8A98]) initWithComponent:v5 accNavInfo:v8];

  return v9;
}

@end