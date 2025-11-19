@interface CRLWPTab
+ (id)displayStringFromTabLeader:(id)a3;
+ (id)stringFromTabAlignment:(int)a3 isRTL:(BOOL)a4 isVertical:(BOOL)a5;
+ (id)tab;
+ (id)tabLeaderFromDisplayString:(id)a3;
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
+ (int)tabAlignmentFromString:(id)a3 isRTL:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (CRLWPTab)initWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5;
- (NSString)leader;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (int64_t)compareToPosition:(double)a3;
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

+ (id)tabLeaderFromDisplayString:(id)a3
{
  v4 = a3;
  v5 = [a1 tabStopDisplayStringPoint];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [a1 tabStopLeaderStringPoint];
LABEL_9:
    v14 = v7;
    goto LABEL_10;
  }

  v8 = [a1 tabStopDisplayStringDash];
  v9 = [v4 isEqualToString:v8];

  if (v9)
  {
    v7 = [a1 tabStopLeaderStringDash];
    goto LABEL_9;
  }

  v10 = [a1 tabStopDisplayStringUnderscore];
  v11 = [v4 isEqualToString:v10];

  if (v11)
  {
    v7 = [a1 tabStopLeaderStringUnderscore];
    goto LABEL_9;
  }

  v12 = [a1 tabStopDisplayStringArrow];
  v13 = [v4 isEqualToString:v12];

  if (v13)
  {
    v7 = [a1 tabStopLeaderStringArrow];
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

+ (int)tabAlignmentFromString:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 tabStopAlignmentStringLeft];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (v4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_15;
  }

  v10 = [a1 tabStopAlignmentStringCenter];
  v11 = [v6 isEqualToString:v10];

  if (v11)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_15;
  }

  v12 = [a1 tabStopAlignmentStringRight];
  v13 = [v6 isEqualToString:v12];

  if (!v13)
  {
    v14 = [a1 tabStopAlignmentStringDecimal];
    v15 = [v6 isEqualToString:v14];

    if (v15)
    {
      v9 = 3;
      goto LABEL_15;
    }

    v16 = [a1 tabStopAlignmentStringTop];
    v17 = [v6 isEqualToString:v16];

    if ((v17 & 1) == 0)
    {
      v19 = [a1 tabStopAlignmentStringMiddle];
      v20 = [v6 isEqualToString:v19];

      if (v20)
      {
        goto LABEL_6;
      }

      v21 = [a1 tabStopAlignmentStringBottom];
      v22 = [v6 isEqualToString:v21];

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

  if (v4)
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

+ (id)stringFromTabAlignment:(int)a3 isRTL:(BOOL)a4 isVertical:(BOOL)a5
{
  v6 = &stru_1018BCA28;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a5)
        {
          [a1 tabStopAlignmentStringMiddle];
        }

        else
        {
          [a1 tabStopAlignmentStringCenter];
        }
        v6 = ;
      }

      goto LABEL_19;
    }

    if (a5)
    {
      v6 = [a1 tabStopAlignmentStringTop];
      goto LABEL_19;
    }

    if (a4)
    {
LABEL_16:
      v6 = [a1 tabStopAlignmentStringRight];
      goto LABEL_19;
    }

LABEL_18:
    v6 = [a1 tabStopAlignmentStringLeft];
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    if (a5)
    {
      v6 = [a1 tabStopAlignmentStringBottom];
      goto LABEL_19;
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a3 == 3)
  {
    v6 = [a1 tabStopAlignmentStringDecimal];
  }

LABEL_19:

  return v6;
}

+ (id)displayStringFromTabLeader:(id)a3
{
  v4 = a3;
  v5 = [a1 tabStopDisplayStringNone];
  v6 = [a1 tabStopLeaderStringPoint];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [a1 tabStopDisplayStringPoint];
  }

  else
  {
    v9 = [a1 tabStopLeaderStringDash];
    v10 = [v4 isEqualToString:v9];

    if (v10)
    {
      v8 = [a1 tabStopDisplayStringDash];
    }

    else
    {
      v11 = [a1 tabStopLeaderStringUnderscore];
      v12 = [v4 isEqualToString:v11];

      if (v12)
      {
        v8 = [a1 tabStopDisplayStringUnderscore];
      }

      else
      {
        v13 = [a1 tabStopLeaderStringArrow];
        v14 = [v4 isEqualToString:v13];

        if (!v14)
        {
          goto LABEL_10;
        }

        v8 = [a1 tabStopDisplayStringArrow];
      }
    }
  }

  v15 = v8;

  v5 = v15;
LABEL_10:

  return v5;
}

+ (id)tab
{
  v2 = objc_alloc_init(CRLWPTab);

  return v2;
}

- (CRLWPTab)initWithPosition:(double)a3 alignment:(int)a4 leader:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = CRLWPTab;
  v9 = [(CRLWPTab *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_position = a3;
    v9->_alignment = a4;
    v11 = [v8 copy];
    leader = v10->_leader;
    v10->_leader = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (int64_t)compareToPosition:(double)a3
{
  position = self->_position;
  if (position < a3)
  {
    return -1;
  }

  else
  {
    return position > a3;
  }
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 position];
    v6 = [(CRLWPTab *)self compareToPosition:?];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6 && ((position = self->_position, [v6 position], position == v9) || vabdd_f64(position, v9) < fabs(v9 * 0.000000999999997)) && (alignment = self->_alignment, alignment == objc_msgSend(v7, "alignment")))
  {
    leader = self->_leader;
    v12 = [v7 leader];
    v13 = leader;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = @" ";
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = @" ";
    }

    v16 = v12;
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