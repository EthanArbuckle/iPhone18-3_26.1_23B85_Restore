@interface HSTCircularBuffer
- (HSTCircularBuffer)initWithMaxItems:(unint64_t)a3 includeTimestamp:(BOOL)a4;
- (NSArray)items;
- (void)appendItem:(id)a3;
@end

@implementation HSTCircularBuffer

- (HSTCircularBuffer)initWithMaxItems:(unint64_t)a3 includeTimestamp:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = HSTCircularBuffer;
  v6 = [(HSTCircularBuffer *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v6->_maxItems = a3;
    v6->_includeTimestamp = a4;
    v9 = [[NSMutableArray alloc] initWithCapacity:a3];
    recordedItems = v7->_recordedItems;
    v7->_recordedItems = v9;

    v11 = objc_alloc_init(NSISO8601DateFormatter);
    formatter = v7->_formatter;
    v7->_formatter = v11;

    v8 = v7;
  }

  return v8;
}

- (void)appendItem:(id)a3
{
  v13 = a3;
  while (1)
  {
    v4 = [(HSTCircularBuffer *)self recordedItems];
    v5 = [v4 count];
    maxItems = self->_maxItems;

    if (v5 < maxItems)
    {
      break;
    }

    v7 = [(HSTCircularBuffer *)self recordedItems];
    [v7 removeObjectAtIndex:0];
  }

  v8 = [v13 mutableCopy];
  if (self->_includeTimestamp)
  {
    formatter = self->_formatter;
    v10 = +[NSDate date];
    v11 = [(NSISO8601DateFormatter *)formatter stringFromDate:v10];
    [v8 setObject:v11 forKeyedSubscript:@"timestamp"];
  }

  v12 = [(HSTCircularBuffer *)self recordedItems];
  [v12 addObject:v8];
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_recordedItems copy];

  return v2;
}

@end