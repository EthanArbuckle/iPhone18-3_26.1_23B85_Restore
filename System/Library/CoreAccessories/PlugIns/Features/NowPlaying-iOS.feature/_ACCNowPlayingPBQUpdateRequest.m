@interface _ACCNowPlayingPBQUpdateRequest
- (_ACCNowPlayingPBQUpdateRequest)initWithID:(id)a3 startIndex:(unsigned int)a4 upToCount:(unsigned int)a5 infoMask:(unsigned int)a6 allowNonLibrary:(BOOL)a7;
- (void)dealloc;
@end

@implementation _ACCNowPlayingPBQUpdateRequest

- (_ACCNowPlayingPBQUpdateRequest)initWithID:(id)a3 startIndex:(unsigned int)a4 upToCount:(unsigned int)a5 infoMask:(unsigned int)a6 allowNonLibrary:(BOOL)a7
{
  v13 = a3;
  v20.receiver = self;
  v20.super_class = _ACCNowPlayingPBQUpdateRequest;
  v14 = [(_ACCNowPlayingPBQUpdateRequest *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestID, a3);
    v15->_startIndex = a4;
    v15->_upToCount = a5;
    v15->_infoMask = a6;
    v15->_allowNonLibrary = a7;
    v15->_startTimeMs = 0;
    if (!a6)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_233600000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] no info requested, assume minimum PID info", v19, 2u);
      }

      v15->_infoMask = 1;
    }
  }

  return v15;
}

- (void)dealloc
{
  requestID = self->_requestID;
  self->_requestID = 0;

  v4.receiver = self;
  v4.super_class = _ACCNowPlayingPBQUpdateRequest;
  [(_ACCNowPlayingPBQUpdateRequest *)&v4 dealloc];
}

- (void)initWithID:startIndex:upToCount:infoMask:allowNonLibrary:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_233600000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end