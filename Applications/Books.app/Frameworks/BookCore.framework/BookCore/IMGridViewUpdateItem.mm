@interface IMGridViewUpdateItem
- (IMGridViewUpdateItem)initWithAction:(int)action forIndex:(unint64_t)index;
- (int64_t)compareIndexes:(id)indexes;
@end

@implementation IMGridViewUpdateItem

- (IMGridViewUpdateItem)initWithAction:(int)action forIndex:(unint64_t)index
{
  result = [(IMGridViewUpdateItem *)self init];
  if (result)
  {
    result->_action = action;
    result->_index = index;
  }

  return result;
}

- (int64_t)compareIndexes:(id)indexes
{
  indexesCopy = indexes;
  index = [(IMGridViewUpdateItem *)self index];
  if (index <= [indexesCopy index])
  {
    index2 = [(IMGridViewUpdateItem *)self index];
    if (index2 >= [indexesCopy index])
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