@interface NavSignManeuverGuidanceInfo
+ (id)updatedGuidanceWithPreviousGuidance:(id)guidance currentGuidance:(id)currentGuidance;
- (BOOL)matchesManeuver:(int)maneuver minorTextAlternatives:(id)alternatives;
- (BOOL)matchesManeuver:(int)maneuver minorTextAlternatives:(id)alternatives shieldInfo:(id)info;
- (MKServerFormattedString)majorText;
- (MKServerFormattedString)minorText;
- (NavSignManeuverGuidanceInfo)initWithSignID:(id)d maneuverArtwork:(id)artwork majorTextAlternatives:(id)alternatives minorTextAlternatives:(id)textAlternatives shieldInfo:(id)info;
- (id)description;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_setNeedsChangeNotification;
- (void)setMajorText:(id)text;
- (void)setMajorTextAlternatives:(id)alternatives;
- (void)setManeuverArtwork:(id)artwork;
- (void)setMinorText:(id)text;
- (void)setMinorTextAlternatives:(id)alternatives;
- (void)setShieldInfo:(id)info;
@end

@implementation NavSignManeuverGuidanceInfo

+ (id)updatedGuidanceWithPreviousGuidance:(id)guidance currentGuidance:(id)currentGuidance
{
  guidanceCopy = guidance;
  currentGuidanceCopy = currentGuidance;
  signID = [guidanceCopy signID];
  signID2 = [currentGuidanceCopy signID];
  v9 = [signID isEqual:signID2];

  v10 = currentGuidanceCopy;
  if (v9)
  {
    maneuverArtwork = [currentGuidanceCopy maneuverArtwork];
    [guidanceCopy setManeuverArtwork:maneuverArtwork];

    majorTextAlternatives = [currentGuidanceCopy majorTextAlternatives];
    [guidanceCopy setMajorTextAlternatives:majorTextAlternatives];

    minorTextAlternatives = [currentGuidanceCopy minorTextAlternatives];
    [guidanceCopy setMinorTextAlternatives:minorTextAlternatives];

    shieldInfo = [currentGuidanceCopy shieldInfo];
    [guidanceCopy setShieldInfo:shieldInfo];

    v10 = guidanceCopy;
  }

  v15 = v10;

  return v10;
}

- (NavSignManeuverGuidanceInfo)initWithSignID:(id)d maneuverArtwork:(id)artwork majorTextAlternatives:(id)alternatives minorTextAlternatives:(id)textAlternatives shieldInfo:(id)info
{
  dCopy = d;
  artworkCopy = artwork;
  alternativesCopy = alternatives;
  textAlternativesCopy = textAlternatives;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = NavSignManeuverGuidanceInfo;
  v18 = [(NavSignManeuverGuidanceInfo *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signID, d);
    objc_storeStrong(&v19->_maneuverArtwork, artwork);
    v20 = [alternativesCopy copy];
    majorTextAlternatives = v19->_majorTextAlternatives;
    v19->_majorTextAlternatives = v20;

    v22 = [textAlternativesCopy copy];
    minorTextAlternatives = v19->_minorTextAlternatives;
    v19->_minorTextAlternatives = v22;

    objc_storeStrong(&v19->_shieldInfo, info);
    v24 = +[NSHashTable weakObjectsHashTable];
    observers = v19->_observers;
    v19->_observers = v24;
  }

  return v19;
}

- (MKServerFormattedString)majorText
{
  majorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self majorTextAlternatives];
  firstObject = [majorTextAlternatives firstObject];

  return firstObject;
}

- (MKServerFormattedString)minorText
{
  minorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  firstObject = [minorTextAlternatives firstObject];

  return firstObject;
}

- (void)setMajorText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v7 = textCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(NavSignManeuverGuidanceInfo *)self setMajorTextAlternatives:v6];
  }

  else
  {
    [(NavSignManeuverGuidanceInfo *)self setMajorTextAlternatives:0];
  }
}

- (void)setMinorText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v7 = textCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(NavSignManeuverGuidanceInfo *)self setMinorTextAlternatives:v6];
  }

  else
  {
    [(NavSignManeuverGuidanceInfo *)self setMinorTextAlternatives:0];
  }
}

- (BOOL)matchesManeuver:(int)maneuver minorTextAlternatives:(id)alternatives shieldInfo:(id)info
{
  alternativesCopy = alternatives;
  infoCopy = info;
  maneuverArtwork = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];

  if (maneuver != maneuver)
  {
    goto LABEL_7;
  }

  shieldInfo = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  if (!shieldInfo)
  {
    if (!infoCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_10;
  }

  v13 = shieldInfo;
  shieldInfo2 = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  v15 = [shieldInfo2 isEqual:infoCopy];

  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  minorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  if ([minorTextAlternatives count])
  {
    minorTextAlternatives2 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
    v18 = [minorTextAlternatives2 isEqualToArray:alternativesCopy];
  }

  else
  {
    v18 = [alternativesCopy count] == 0;
  }

LABEL_10:
  return v18;
}

- (BOOL)matchesManeuver:(int)maneuver minorTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  maneuverArtwork = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];

  if (maneuver == maneuver)
  {
    minorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
    if ([minorTextAlternatives count])
    {
      minorTextAlternatives2 = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
      v11 = [minorTextAlternatives2 isEqualToArray:alternativesCopy];
    }

    else
    {
      v11 = [alternativesCopy count] == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = NavSignManeuverGuidanceInfo;
  v3 = [(NavSignManeuverGuidanceInfo *)&v17 description];
  signID = [(NavSignManeuverGuidanceInfo *)self signID];
  maneuverArtwork = [(NavSignManeuverGuidanceInfo *)self maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];
  v6 = @"NO_TURN";
  switch(maneuver)
  {
    case 0:
      break;
    case 1:
      v6 = @"LEFT_TURN";
      break;
    case 2:
      v6 = @"RIGHT_TURN";
      break;
    case 3:
      v6 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v6 = @"U_TURN";
      break;
    case 5:
      v6 = @"FOLLOW_ROAD";
      break;
    case 6:
      v6 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v6 = @"EXIT_ROUNDABOUT";
      break;
    case 11:
      v6 = @"OFF_RAMP";
      break;
    case 12:
      v6 = @"ON_RAMP";
      break;
    case 16:
      v6 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 17:
      v6 = @"START_ROUTE";
      break;
    case 18:
      v6 = @"ARRIVE_AT_DESTINATION";
      break;
    case 20:
      v6 = @"KEEP_LEFT";
      break;
    case 21:
      v6 = @"KEEP_RIGHT";
      break;
    case 22:
      v6 = @"ENTER_FERRY";
      break;
    case 23:
      v6 = @"EXIT_FERRY";
      break;
    case 24:
      v6 = @"CHANGE_FERRY";
      break;
    case 25:
      v6 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 26:
      v6 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 27:
      v6 = @"LEFT_TURN_AT_END";
      break;
    case 28:
      v6 = @"RIGHT_TURN_AT_END";
      break;
    case 29:
      v6 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 30:
      v6 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 33:
      v6 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 34:
      v6 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 35:
      v6 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 39:
      v6 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 41:
      v6 = @"ROUNDABOUT_EXIT_1";
      break;
    case 42:
      v6 = @"ROUNDABOUT_EXIT_2";
      break;
    case 43:
      v6 = @"ROUNDABOUT_EXIT_3";
      break;
    case 44:
      v6 = @"ROUNDABOUT_EXIT_4";
      break;
    case 45:
      v6 = @"ROUNDABOUT_EXIT_5";
      break;
    case 46:
      v6 = @"ROUNDABOUT_EXIT_6";
      break;
    case 47:
      v6 = @"ROUNDABOUT_EXIT_7";
      break;
    case 48:
      v6 = @"ROUNDABOUT_EXIT_8";
      break;
    case 49:
      v6 = @"ROUNDABOUT_EXIT_9";
      break;
    case 50:
      v6 = @"ROUNDABOUT_EXIT_10";
      break;
    case 51:
      v6 = @"ROUNDABOUT_EXIT_11";
      break;
    case 52:
      v6 = @"ROUNDABOUT_EXIT_12";
      break;
    case 53:
      v6 = @"ROUNDABOUT_EXIT_13";
      break;
    case 54:
      v6 = @"ROUNDABOUT_EXIT_14";
      break;
    case 55:
      v6 = @"ROUNDABOUT_EXIT_15";
      break;
    case 56:
      v6 = @"ROUNDABOUT_EXIT_16";
      break;
    case 57:
      v6 = @"ROUNDABOUT_EXIT_17";
      break;
    case 58:
      v6 = @"ROUNDABOUT_EXIT_18";
      break;
    case 59:
      v6 = @"ROUNDABOUT_EXIT_19";
      break;
    case 60:
      v6 = @"SHARP_LEFT_TURN";
      break;
    case 61:
      v6 = @"SHARP_RIGHT_TURN";
      break;
    case 62:
      v6 = @"SLIGHT_LEFT_TURN";
      break;
    case 63:
      v6 = @"SLIGHT_RIGHT_TURN";
      break;
    case 64:
      v6 = @"CHANGE_HIGHWAY";
      break;
    case 65:
      v6 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 66:
      v6 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 80:
      v6 = @"TOLL_STATION";
      break;
    case 81:
      v6 = @"ENTER_TUNNEL";
      break;
    case 82:
      v6 = @"WAYPOINT_STOP";
      break;
    case 83:
      v6 = @"WAYPOINT_STOP_LEFT";
      break;
    case 84:
      v6 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 85:
      v6 = @"RESUME_ROUTE";
      break;
    case 86:
      v6 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 87:
      v6 = @"CUSTOM";
      break;
    case 88:
      v6 = @"TURN_AROUND";
      break;
    default:
      v6 = [NSString stringWithFormat:@"(unknown: %i)", maneuver];
      break;
  }

  majorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self majorTextAlternatives];
  firstObject = [majorTextAlternatives firstObject];
  v9 = [firstObject debugDescription];
  minorTextAlternatives = [(NavSignManeuverGuidanceInfo *)self minorTextAlternatives];
  firstObject2 = [minorTextAlternatives firstObject];
  v12 = [firstObject2 debugDescription];
  shieldInfo = [(NavSignManeuverGuidanceInfo *)self shieldInfo];
  v15 = [NSString stringWithFormat:@"%@ signID: [%@] maneuver: [%@] major: [%@] minor: [%@] shield: [%@]", v3, signID, v6, v9, v12, shieldInfo];

  return v15;
}

- (void)_notifyObserversWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setNeedsChangeNotification
{
  if (!self->_willNotify)
  {
    self->_willNotify = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_194B8;
    block[3] = &unk_34970;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setManeuverArtwork:(id)artwork
{
  artworkCopy = artwork;
  maneuverArtwork = self->_maneuverArtwork;
  if (maneuverArtwork != artworkCopy && ![(GuidanceManeuverArtwork *)maneuverArtwork isEqual:artworkCopy])
  {
    objc_storeStrong(&self->_maneuverArtwork, artwork);
    [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
  }

  _objc_release_x1();
}

- (void)setMajorTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  majorTextAlternatives = self->_majorTextAlternatives;
  if (majorTextAlternatives != alternativesCopy)
  {
    v9 = alternativesCopy;
    if (!alternativesCopy || (v6 = [(NSArray *)majorTextAlternatives isEqualToArray:alternativesCopy], alternativesCopy = v9, (v6 & 1) == 0))
    {
      v7 = [(NSArray *)alternativesCopy copy];
      v8 = self->_majorTextAlternatives;
      self->_majorTextAlternatives = v7;

      [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
    }
  }

  _objc_release_x1();
}

- (void)setMinorTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  minorTextAlternatives = self->_minorTextAlternatives;
  if (minorTextAlternatives != alternativesCopy)
  {
    v9 = alternativesCopy;
    if (!alternativesCopy || (v6 = [(NSArray *)minorTextAlternatives isEqualToArray:alternativesCopy], alternativesCopy = v9, (v6 & 1) == 0))
    {
      v7 = [(NSArray *)alternativesCopy copy];
      v8 = self->_minorTextAlternatives;
      self->_minorTextAlternatives = v7;

      [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
    }
  }

  _objc_release_x1();
}

- (void)setShieldInfo:(id)info
{
  infoCopy = info;
  shieldInfo = self->_shieldInfo;
  if (shieldInfo != infoCopy && ![(NavSignShieldInfo *)shieldInfo isEqual:infoCopy])
  {
    objc_storeStrong(&self->_shieldInfo, info);
    [(NavSignManeuverGuidanceInfo *)self _setNeedsChangeNotification];
  }

  _objc_release_x1();
}

@end