@interface ATCIOA2Stream
- (ATCIOA2Stream)initWithService:(id)a3 connection:(id)a4 index:(unint64_t)a5 input:(BOOL)a6 description:(id)a7;
@end

@implementation ATCIOA2Stream

- (ATCIOA2Stream)initWithService:(id)a3 connection:(id)a4 index:(unint64_t)a5 input:(BOOL)a6 description:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v38.receiver = self;
  v38.super_class = ATCIOA2Stream;
  v16 = [(ATCIOA2Stream *)&v38 init];
  v17 = v16;
  if (v16)
  {
    v33 = v13;
    objc_storeStrong(&v16->_service, a3);
    objc_storeStrong(&v17->_connection, a4);
    v17->_index = a5;
    v17->_input = a6;
    v18 = [v15 objectForKeyedSubscript:@"stream ID"];
    v17->_physicalID = [v18 unsignedIntValue];

    v19 = [v15 objectForKeyedSubscript:@"starting channel"];
    v17->_startingChannel = [v19 unsignedIntValue];

    v20 = [v15 objectForKeyedSubscript:@"current format"];
    v21 = [ATCIOA2StreamFormat aeaStreamFormatWithDictionary:v20];
    currentFormat = v17->_currentFormat;
    v17->_currentFormat = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = [v15 objectForKeyedSubscript:@"available formats"];
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        v28 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [ATCIOA2StreamFormat aeaStreamFormatsWithRangedDictionary:*(*(&v34 + 1) + 8 * v28)];
          if (v29)
          {
            [(NSArray *)v23 addObjectsFromArray:v29];
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v26);
    }

    availableFormats = v17->_availableFormats;
    v17->_availableFormats = v23;

    v13 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

@end