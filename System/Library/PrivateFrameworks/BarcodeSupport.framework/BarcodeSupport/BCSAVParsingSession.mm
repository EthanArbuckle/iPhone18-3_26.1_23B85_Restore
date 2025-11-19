@interface BCSAVParsingSession
- (BCSAVParsingSession)init;
- (BOOL)_isLikelyLastScannedObject:(id)a3;
- (BOOL)_shouldSkipIncomingObject:(id)a3;
- (double)_temporalStickyFactorForObject:(id)a3;
- (id)_bestObjectForParsing:(id)a3;
- (void)_updateSessionWithMetadataObject:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)updateSessionWithMetadataObjects:(id)a3 completionHandler:(id)a4;
@end

@implementation BCSAVParsingSession

- (BCSAVParsingSession)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = BCSAVParsingSession;
  v2 = [(BCSAVParsingSession *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(BCSQRCodeParser);
    parser = v2->_parser;
    v2->_parser = v3;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v10 = v2;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAVParsingSession (%p): Created", buf, 0xCu);
    }

    v5 = v2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  [(BCSQRCodeParser *)self->_parser stopQRCodeParsingSession];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAVParsingSession (%p): Deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = BCSAVParsingSession;
  [(BCSAVParsingSession *)&v4 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLikelyLastScannedObject:(id)a3
{
  lastScannedCodeBasicDescriptor = self->_lastScannedCodeBasicDescriptor;
  if (lastScannedCodeBasicDescriptor)
  {
    return [a3 _bcs_probablyContainsSameCodeInBasicDescriptor:lastScannedCodeBasicDescriptor];
  }

  else
  {
    return 0;
  }
}

- (void)_updateSessionWithMetadataObject:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(BCSAVParsingSession *)self _isLikelyLastScannedObject:v6])
  {
    v8 = [v6 basicDescriptor];
    lastScannedCodeBasicDescriptor = self->_lastScannedCodeBasicDescriptor;
    self->_lastScannedCodeBasicDescriptor = v8;

    self->_lastScannedTime = CFAbsoluteTimeGetCurrent();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __74__BCSAVParsingSession__updateSessionWithMetadataObject_completionHandler___block_invoke;
    v15 = &unk_278CFE988;
    v17 = v7;
    v10 = v6;
    v16 = v10;
    v11 = MEMORY[0x245CF4600](&v12);
    [(BCSQRCodeParser *)self->_parser startQRCodeParsingSessionWithMetadataObject:v10 completionHandler:v11, v12, v13, v14, v15];

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BCSAVParsingSession _updateSessionWithMetadataObject:? completionHandler:?];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (v7)
  {
LABEL_4:
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_6:
}

void __74__BCSAVParsingSession__updateSessionWithMetadataObject_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v7 = *(v6 + 16);
  }

  v7();
LABEL_7:
}

- (void)updateSessionWithMetadataObjects:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BCSAVParsingSession *)self _bestObjectForParsing:v9];
  if (v7)
  {
    if ([v9 count] == 1 && -[BCSAVParsingSession _shouldSkipIncomingObject:](self, "_shouldSkipIncomingObject:", v7))
    {
      if (v6)
      {
        (*(v6 + 2))(v6, 0, 0);
      }
    }

    else
    {
      [(BCSAVParsingSession *)self _updateSessionWithMetadataObject:v7 completionHandler:v6];
    }
  }

  else if (v6)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:5 userInfo:0];
    (*(v6 + 2))(v6, 0, v8);
  }
}

- (double)_temporalStickyFactorForObject:(id)a3
{
  if (![(BCSAVParsingSession *)self _isLikelyLastScannedObject:a3])
  {
    return 1.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->_lastScannedTime;
  self->_lastScannedTime = Current;
  return fmin(v5 * v5, 1.0);
}

- (BOOL)_shouldSkipIncomingObject:(id)a3
{
  v4 = [a3 type];
  v5 = *MEMORY[0x277CE5A80];

  if (v4 != v5)
  {
    return 0;
  }

  lastScannedCodeBasicDescriptor = self->_lastScannedCodeBasicDescriptor;
  if (!lastScannedCodeBasicDescriptor)
  {
    return 0;
  }

  v9 = [(NSDictionary *)lastScannedCodeBasicDescriptor objectForKeyedSubscript:@"BarcodeType"];
  v10 = [v9 isEqualToString:@"com.apple.AppClipCode"];

  if (!v10 || CFAbsoluteTimeGetCurrent() - self->_lastScannedTime > 0.75)
  {
    return 0;
  }

  v6 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAVParsingSession: Skipping a QR code since an app clip code was selected a short while ago (< 750ms).", v11, 2u);
  }

  return v6;
}

- (id)_bestObjectForParsing:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else if ([v4 count] <= 2)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0x7FEFFFFFFFFFFFFFLL;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__BCSAVParsingSession__bestObjectForParsing___block_invoke;
    v7[3] = &unk_278CFE9B0;
    v7[4] = self;
    v7[5] = v12;
    v7[6] = &v8;
    [v4 enumerateObjectsUsingBlock:v7];
    v5 = [v4 objectAtIndex:v9[3]];
    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(v12, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __45__BCSAVParsingSession__bestObjectForParsing___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 bounds];
  _bcs_pointToRectDistance(0.5, 0.5, v6, v7, v8, v9);
  v11 = v10;
  [*(a1 + 32) _temporalStickyFactorForObject:v5];
  v13 = v12;

  v14 = *(*(a1 + 40) + 8);
  if (v11 * v13 < *(v14 + 24))
  {
    *(v14 + 24) = v11 * v13;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

- (void)_updateSessionWithMetadataObject:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSAVParsingSession (%p): Skip processing of same QR code", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end