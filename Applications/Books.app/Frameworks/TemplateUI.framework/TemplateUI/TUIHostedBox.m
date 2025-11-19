@interface TUIHostedBox
+ (unint64_t)arrowDirectionFromString:(id)a3;
+ (unint64_t)presentationFromString:(id)a3;
- (UIEdgeInsets)insets;
@end

@implementation TUIHostedBox

+ (unint64_t)presentationFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6198 != -1)
  {
    sub_199C38();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6190 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)arrowDirectionFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E61A8 != -1)
  {
    sub_199C4C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E61A0 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end