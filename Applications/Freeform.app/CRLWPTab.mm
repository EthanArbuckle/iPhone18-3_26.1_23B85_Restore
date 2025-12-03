@interface CRLWPTab
+ (id)displayStringFromTabLeader:(id)leader;
+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l isVertical:(BOOL)vertical;
+ (id)tab;
+ (id)tabLeaderFromDisplayString:(id)string;
+ (id)tabStopAlignmentStringBottom;
+ (id)tabStopAlignmentStringCenter;
+ (id)tabStopAlignmentStringDecimal;
+ (id)tabStopAlignmentStringLeft;
+ (id)tabStopAlignmentStringMiddle;
+ (id)tabStopAlignmentStringRight;
+ (id)tabStopAlignmentStringTop;
+ (id)tabStopDisplayStringArrow;
+ (id)tabStopDisplayStringDash;
+ (id)tabStopDisplayStringNone;
+ (id)tabStopDisplayStringPoint;
+ (id)tabStopDisplayStringUnderscore;
+ (id)tabStopLeaderStringArrow;
+ (id)tabStopLeaderStringArrowRTL;
+ (id)tabStopLeaderStringDash;
+ (id)tabStopLeaderStringPoint;
+ (id)tabStopLeaderStringUnderscore;
+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l;
- (BOOL)isEqual:(id)equal;
- (CRLWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader;
- (NSString)leader;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)compareToPosition:(double)position;
@end

@implementation CRLWPTab

+ (id)tabStopAlignmentStringTop
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Top" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringMiddle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Middle" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringBottom
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Bottom" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringLeft
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Left" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringCenter
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Center" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringRight
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Right" value:0 table:0];

  return v3;
}

+ (id)tabStopAlignmentStringDecimal
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Decimal" value:0 table:0];

  return v3;
}

+ (id)tabStopDisplayStringNone
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NONE_LEADER_DISPLAY" value:@"None" table:0];

  return v3;
}

+ (id)tabStopDisplayStringPoint
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"....." value:0 table:0];

  return v3;
}

+ (id)tabStopDisplayStringDash
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"-----" value:0 table:0];

  return v3;
}

+ (id)tabStopDisplayStringUnderscore
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"_____" value:0 table:0];

  return v3;
}

+ (id)tabStopDisplayStringArrow
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"→→→" value:0 table:0];

  return v3;
}

+ (id)tabStopLeaderStringPoint
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"." value:0 table:0];

  return v3;
}

+ (id)tabStopLeaderStringDash
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"-" value:0 table:0];

  return v3;
}

+ (id)tabStopLeaderStringUnderscore
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"_" value:0 table:0];

  return v3;
}

+ (id)tabStopLeaderStringArrow
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"→" value:0 table:0];

  return v3;
}

+ (id)tabStopLeaderStringArrowRTL
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"←" value:0 table:0];

  return v3;
}

+ (id)tabLeaderFromDisplayString:(id)string
{
  stringCopy = string;
  tabStopDisplayStringPoint = [self tabStopDisplayStringPoint];
  v6 = [stringCopy isEqualToString:tabStopDisplayStringPoint];

  if (v6)
  {
    tabStopLeaderStringPoint = [self tabStopLeaderStringPoint];
LABEL_9:
    v14 = tabStopLeaderStringPoint;
    goto LABEL_10;
  }

  tabStopDisplayStringDash = [self tabStopDisplayStringDash];
  v9 = [stringCopy isEqualToString:tabStopDisplayStringDash];

  if (v9)
  {
    tabStopLeaderStringPoint = [self tabStopLeaderStringDash];
    goto LABEL_9;
  }

  tabStopDisplayStringUnderscore = [self tabStopDisplayStringUnderscore];
  v11 = [stringCopy isEqualToString:tabStopDisplayStringUnderscore];

  if (v11)
  {
    tabStopLeaderStringPoint = [self tabStopLeaderStringUnderscore];
    goto LABEL_9;
  }

  tabStopDisplayStringArrow = [self tabStopDisplayStringArrow];
  v13 = [stringCopy isEqualToString:tabStopDisplayStringArrow];

  if (v13)
  {
    tabStopLeaderStringPoint = [self tabStopLeaderStringArrow];
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

+ (int)tabAlignmentFromString:(id)string isRTL:(BOOL)l
{
  lCopy = l;
  stringCopy = string;
  tabStopAlignmentStringLeft = [self tabStopAlignmentStringLeft];
  v8 = [stringCopy isEqualToString:tabStopAlignmentStringLeft];

  if (v8)
  {
    if (lCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_15;
  }

  tabStopAlignmentStringCenter = [self tabStopAlignmentStringCenter];
  v11 = [stringCopy isEqualToString:tabStopAlignmentStringCenter];

  if (v11)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_15;
  }

  tabStopAlignmentStringRight = [self tabStopAlignmentStringRight];
  v13 = [stringCopy isEqualToString:tabStopAlignmentStringRight];

  if (!v13)
  {
    tabStopAlignmentStringDecimal = [self tabStopAlignmentStringDecimal];
    v15 = [stringCopy isEqualToString:tabStopAlignmentStringDecimal];

    if (v15)
    {
      v9 = 3;
      goto LABEL_15;
    }

    tabStopAlignmentStringTop = [self tabStopAlignmentStringTop];
    v17 = [stringCopy isEqualToString:tabStopAlignmentStringTop];

    if ((v17 & 1) == 0)
    {
      tabStopAlignmentStringMiddle = [self tabStopAlignmentStringMiddle];
      v20 = [stringCopy isEqualToString:tabStopAlignmentStringMiddle];

      if (v20)
      {
        goto LABEL_6;
      }

      tabStopAlignmentStringBottom = [self tabStopAlignmentStringBottom];
      v22 = [stringCopy isEqualToString:tabStopAlignmentStringBottom];

      if (v22)
      {
        v9 = 2;
        goto LABEL_15;
      }

      v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B1C4();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B1D8(v23, v24);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B284();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v26, v29, v23, v25);
      }

      v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPTab tabAlignmentFromString:isRTL:]");
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPTabs.mm"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:154 isFatal:0 description:"Unrecognized tab alignment string. Returning kTabAlignmentLeft by default."];
    }

    v9 = 0;
    goto LABEL_15;
  }

  if (lCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

LABEL_15:

  return v9;
}

+ (id)stringFromTabAlignment:(int)alignment isRTL:(BOOL)l isVertical:(BOOL)vertical
{
  tabStopAlignmentStringTop = &stru_1018BCA28;
  if (alignment <= 1)
  {
    if (alignment)
    {
      if (alignment == 1)
      {
        if (vertical)
        {
          [self tabStopAlignmentStringMiddle];
        }

        else
        {
          [self tabStopAlignmentStringCenter];
        }
        tabStopAlignmentStringTop = ;
      }

      goto LABEL_19;
    }

    if (vertical)
    {
      tabStopAlignmentStringTop = [self tabStopAlignmentStringTop];
      goto LABEL_19;
    }

    if (l)
    {
LABEL_16:
      tabStopAlignmentStringTop = [self tabStopAlignmentStringRight];
      goto LABEL_19;
    }

LABEL_18:
    tabStopAlignmentStringTop = [self tabStopAlignmentStringLeft];
    goto LABEL_19;
  }

  if (alignment == 2)
  {
    if (vertical)
    {
      tabStopAlignmentStringTop = [self tabStopAlignmentStringBottom];
      goto LABEL_19;
    }

    if (!l)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (alignment == 3)
  {
    tabStopAlignmentStringTop = [self tabStopAlignmentStringDecimal];
  }

LABEL_19:

  return tabStopAlignmentStringTop;
}

+ (id)displayStringFromTabLeader:(id)leader
{
  leaderCopy = leader;
  tabStopDisplayStringNone = [self tabStopDisplayStringNone];
  tabStopLeaderStringPoint = [self tabStopLeaderStringPoint];
  v7 = [leaderCopy isEqualToString:tabStopLeaderStringPoint];

  if (v7)
  {
    tabStopDisplayStringPoint = [self tabStopDisplayStringPoint];
  }

  else
  {
    tabStopLeaderStringDash = [self tabStopLeaderStringDash];
    v10 = [leaderCopy isEqualToString:tabStopLeaderStringDash];

    if (v10)
    {
      tabStopDisplayStringPoint = [self tabStopDisplayStringDash];
    }

    else
    {
      tabStopLeaderStringUnderscore = [self tabStopLeaderStringUnderscore];
      v12 = [leaderCopy isEqualToString:tabStopLeaderStringUnderscore];

      if (v12)
      {
        tabStopDisplayStringPoint = [self tabStopDisplayStringUnderscore];
      }

      else
      {
        tabStopLeaderStringArrow = [self tabStopLeaderStringArrow];
        v14 = [leaderCopy isEqualToString:tabStopLeaderStringArrow];

        if (!v14)
        {
          goto LABEL_10;
        }

        tabStopDisplayStringPoint = [self tabStopDisplayStringArrow];
      }
    }
  }

  v15 = tabStopDisplayStringPoint;

  tabStopDisplayStringNone = v15;
LABEL_10:

  return tabStopDisplayStringNone;
}

+ (id)tab
{
  v2 = objc_alloc_init(CRLWPTab);

  return v2;
}

- (CRLWPTab)initWithPosition:(double)position alignment:(int)alignment leader:(id)leader
{
  leaderCopy = leader;
  v14.receiver = self;
  v14.super_class = CRLWPTab;
  v9 = [(CRLWPTab *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_position = position;
    v9->_alignment = alignment;
    v11 = [leaderCopy copy];
    leader = v10->_leader;
    v10->_leader = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  position = self->_position;
  alignment = self->_alignment;
  leader = self->_leader;

  return [v4 initWithPosition:alignment alignment:leader leader:position];
}

- (NSString)leader
{
  if (self->_leader)
  {
    return self->_leader;
  }

  else
  {
    return @" ";
  }
}

- (int64_t)compareToPosition:(double)position
{
  position = self->_position;
  if (position < position)
  {
    return -1;
  }

  else
  {
    return position > position;
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = compareCopy;
  if (compareCopy)
  {
    [compareCopy position];
    v6 = [(CRLWPTab *)self compareToPosition:?];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);
  v7 = v6;
  if (v6 && ((position = self->_position, [v6 position], position == v9) || vabdd_f64(position, v9) < fabs(v9 * 0.000000999999997)) && (alignment = self->_alignment, alignment == objc_msgSend(v7, "alignment")))
  {
    leader = self->_leader;
    leader = [v7 leader];
    v13 = leader;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = @" ";
    }

    if (leader)
    {
      v15 = leader;
    }

    else
    {
      v15 = @" ";
    }

    v16 = leader;
    v17 = [(__CFString *)v14 isEqualToString:v15];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: pos=%f align=%d; leader='%@'>", v4, *&self->_position, self->_alignment, self->_leader];;

  return v5;
}

@end