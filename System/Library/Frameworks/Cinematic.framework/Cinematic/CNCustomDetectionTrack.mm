@interface CNCustomDetectionTrack
- (BOOL)_integrityCheck;
- (CNCustomDetectionTrack)initWithDetections:(NSArray *)detections smooth:(BOOL)applySmoothing;
- (NSArray)allDetections;
- (void)_integrityCheck;
@end

@implementation CNCustomDetectionTrack

- (CNCustomDetectionTrack)initWithDetections:(NSArray *)detections smooth:(BOOL)applySmoothing
{
  v4 = applySmoothing;
  v6 = [CNDetection _copyInternalFromDetections:detections];
  v7 = [objc_alloc(MEMORY[0x277D3E830]) initWithDetections:v6];
  v8 = v7;
  if (v4)
  {
    [v7 applyDetectionSmoothing];
  }

  v11.receiver = self;
  v11.super_class = CNCustomDetectionTrack;
  v9 = [(CNDetectionTrack *)&v11 _initWithInternal:v8];

  return v9;
}

- (NSArray)allDetections
{
  if ([(CNCustomDetectionTrack *)self _integrityCheck])
  {
    _internalCustomTrack = [(CNCustomDetectionTrack *)self _internalCustomTrack];
    allDetections = [_internalCustomTrack allDetections];
    v5 = [CNDetection _copyDetectionsFromInternal:allDetections];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (BOOL)_integrityCheck
{
  internalTrack = [(CNDetectionTrack *)self internalTrack];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = _CNLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CNCustomDetectionTrack *)self _integrityCheck];
    }
  }

  return isKindOfClass & 1;
}

- (void)_integrityCheck
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  internalTrack = [self internalTrack];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v10 = 138412546;
  v11 = v5;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_236F52000, a2, OS_LOG_TYPE_DEBUG, "%@ has unexpected internal type %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end