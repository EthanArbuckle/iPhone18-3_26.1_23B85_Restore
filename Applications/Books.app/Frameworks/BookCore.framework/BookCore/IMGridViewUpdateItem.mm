@interface IMGridViewUpdateItem
- (IMGridViewUpdateItem)initWithAction:(int)a3 forIndex:(unint64_t)a4;
- (int64_t)compareIndexes:(id)a3;
@end

@implementation IMGridViewUpdateItem

- (IMGridViewUpdateItem)initWithAction:(int)a3 forIndex:(unint64_t)a4
{
  result = [(IMGridViewUpdateItem *)self init];
  if (result)
  {
    result->_action = a3;
    result->_index = a4;
  }

  return result;
}

- (int64_t)compareIndexes:(id)a3
{
  v4 = a3;
  v5 = [(IMGridViewUpdateItem *)self index];
  if (v5 <= [v4 index])
  {
    v7 = [(IMGridViewUpdateItem *)self index];
    if (v7 >= [v4 index])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end