@interface FIFOQueue
- (FIFOQueue)init;
- (FIFOQueue)initWithArray:(id)array;
- (id)dequeueBlock;
- (unsigned)resetSequence;
@end

@implementation FIFOQueue

- (FIFOQueue)init
{
  v6.receiver = self;
  v6.super_class = FIFOQueue;
  v2 = [(FIFOQueue *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (FIFOQueue)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = FIFOQueue;
  v5 = [(FIFOQueue *)&v9 init];
  if (v5)
  {
    v6 = [NSMutableArray arrayWithArray:arrayCopy];
    queue = v5->_queue;
    v5->_queue = v6;
  }

  return v5;
}

- (id)dequeueBlock
{
  lastObject = [(NSMutableArray *)self->_queue lastObject];
  [(NSMutableArray *)self->_queue removeLastObject];

  return lastObject;
}

- (unsigned)resetSequence
{
  selfCopy = self;
  v3 = [(NSMutableArray *)self->_queue count];
  v4 = 0;
  if ([(NSMutableArray *)selfCopy->_queue count])
  {
    v5 = v3 - 1;
    v6 = 1;
    v7 = &selRef_setBPINOperation_;
    do
    {
      v8 = [(NSMutableArray *)selfCopy->_queue objectAtIndexedSubscript:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v4 + 1;
        v20 = v7 + 285;
        v19 = v4;
        v9 = selfCopy;
        v10 = v7;
        v11 = v5;
        v12 = v8;
        nodeAddressByte = [v12 nodeAddressByte];
        moreData = [v12 moreData];
        informationField = [v12 informationField];
        redundancyCodeType = [v12 redundancyCodeType];

        v5 = v11;
        v7 = v10;
        selfCopy = v9;
        v17 = [v20 informationBlockWithNad:nodeAddressByte sequence:v19 & 1 moreData:moreData informationField:informationField redundancyCode:redundancyCodeType];
        [(NSMutableArray *)selfCopy->_queue setObject:v17 atIndexedSubscript:v5];

        v4 = v21;
      }

      ++v6;
    }

    while (v6 <= [(NSMutableArray *)selfCopy->_queue count]);
  }

  return v4;
}

@end