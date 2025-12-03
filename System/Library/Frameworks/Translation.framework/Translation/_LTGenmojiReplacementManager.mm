@interface _LTGenmojiReplacementManager
- (_LTGenmojiReplacementManager)init;
- (id)replacementInfoForRequestID:(id)d;
- (void)addReplacementInfo:(id)info;
@end

@implementation _LTGenmojiReplacementManager

- (_LTGenmojiReplacementManager)init
{
  v7.receiver = self;
  v7.super_class = _LTGenmojiReplacementManager;
  v2 = [(_LTGenmojiReplacementManager *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    infoMap = v2->_infoMap;
    v2->_infoMap = dictionary;

    v5 = v2;
  }

  return v2;
}

- (void)addReplacementInfo:(id)info
{
  infoCopy = info;
  infoMap = self->_infoMap;
  v10 = infoCopy;
  requestUniqueID = [infoCopy requestUniqueID];
  array = [(NSMutableDictionary *)infoMap objectForKeyedSubscript:requestUniqueID];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_infoMap;
    requestUniqueID2 = [v10 requestUniqueID];
    [(NSMutableDictionary *)v8 setObject:array forKeyedSubscript:requestUniqueID2];
  }

  [array addObject:v10];
}

- (id)replacementInfoForRequestID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_infoMap objectForKeyedSubscript:d];
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