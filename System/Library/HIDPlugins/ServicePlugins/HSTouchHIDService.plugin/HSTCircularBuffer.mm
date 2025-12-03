@interface HSTCircularBuffer
- (HSTCircularBuffer)initWithMaxItems:(unint64_t)items includeTimestamp:(BOOL)timestamp;
- (NSArray)items;
- (void)appendItem:(id)item;
@end

@implementation HSTCircularBuffer

- (HSTCircularBuffer)initWithMaxItems:(unint64_t)items includeTimestamp:(BOOL)timestamp
{
  v14.receiver = self;
  v14.super_class = HSTCircularBuffer;
  v6 = [(HSTCircularBuffer *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (items && v6)
  {
    v6->_maxItems = items;
    v6->_includeTimestamp = timestamp;
    v9 = [[NSMutableArray alloc] initWithCapacity:items];
    recordedItems = v7->_recordedItems;
    v7->_recordedItems = v9;

    v11 = objc_alloc_init(NSISO8601DateFormatter);
    formatter = v7->_formatter;
    v7->_formatter = v11;

    v8 = v7;
  }

  return v8;
}

- (void)appendItem:(id)item
{
  itemCopy = item;
  while (1)
  {
    recordedItems = [(HSTCircularBuffer *)self recordedItems];
    v5 = [recordedItems count];
    maxItems = self->_maxItems;

    if (v5 < maxItems)
    {
      break;
    }

    recordedItems2 = [(HSTCircularBuffer *)self recordedItems];
    [recordedItems2 removeObjectAtIndex:0];
  }

  v8 = [itemCopy mutableCopy];
  if (self->_includeTimestamp)
  {
    formatter = self->_formatter;
    v10 = +[NSDate date];
    v11 = [(NSISO8601DateFormatter *)formatter stringFromDate:v10];
    [v8 setObject:v11 forKeyedSubscript:@"timestamp"];
  }

  recordedItems3 = [(HSTCircularBuffer *)self recordedItems];
  [recordedItems3 addObject:v8];
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_recordedItems copy];

  return v2;
}

@end