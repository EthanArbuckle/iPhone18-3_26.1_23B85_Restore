@interface _LTGenmojiReplacementManager
- (_LTGenmojiReplacementManager)init;
- (id)replacementInfoForRequestID:(id)a3;
- (void)addReplacementInfo:(id)a3;
@end

@implementation _LTGenmojiReplacementManager

- (_LTGenmojiReplacementManager)init
{
  v7.receiver = self;
  v7.super_class = _LTGenmojiReplacementManager;
  v2 = [(_LTGenmojiReplacementManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    infoMap = v2->_infoMap;
    v2->_infoMap = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addReplacementInfo:(id)a3
{
  v4 = a3;
  infoMap = self->_infoMap;
  v10 = v4;
  v6 = [v4 requestUniqueID];
  v7 = [(NSMutableDictionary *)infoMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_infoMap;
    v9 = [v10 requestUniqueID];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  [v7 addObject:v10];
}

- (id)replacementInfoForRequestID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_infoMap objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

@end