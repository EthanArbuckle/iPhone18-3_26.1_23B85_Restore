@interface WKWindowFeatures
- (NSNumber)_dialogDisplay;
- (NSNumber)_fullscreenDisplay;
- (NSNumber)_locationBarVisibility;
- (NSNumber)_popup;
- (NSNumber)_scrollbarsVisibility;
- (NSNumber)allowsResizing;
- (NSNumber)height;
- (NSNumber)menuBarVisibility;
- (NSNumber)statusBarVisibility;
- (NSNumber)toolbarsVisibility;
- (NSNumber)width;
- (NSNumber)x;
- (NSNumber)y;
- (void)dealloc;
@end

@implementation WKWindowFeatures

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self[1]._windowFeatures.m_storage.data[24], v4);
    v5.receiver = self;
    v5.super_class = WKWindowFeatures;
    [(WKWindowFeatures *)&v5 dealloc];
  }
}

- (NSNumber)menuBarVisibility
{
  isa_high = HIWORD(self[1].super.isa);
  if ((isa_high & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:isa_high & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)statusBarVisibility
{
  v2 = *self[1]._windowFeatures.m_storage.data;
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)toolbarsVisibility
{
  v2 = *&self[1]._windowFeatures.m_storage.data[2];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)allowsResizing
{
  v2 = *&self[1]._windowFeatures.m_storage.data[8];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)x
{
  if ((self->_windowFeatures.m_storage.data[24] & 1) == 0)
  {
    return 0;
  }

  LODWORD(v2) = *&self->_windowFeatures.m_storage.data[20];
  return [MEMORY[0x1E696AD98] numberWithFloat:v2];
}

- (NSNumber)y
{
  if ((self->_windowFeatures.m_storage.data[32] & 1) == 0)
  {
    return 0;
  }

  LODWORD(v2) = *&self->_windowFeatures.m_storage.data[28];
  return [MEMORY[0x1E696AD98] numberWithFloat:v2];
}

- (NSNumber)width
{
  if ((self->_windowFeatures.m_storage.data[40] & 1) == 0)
  {
    return 0;
  }

  LODWORD(v2) = *&self->_windowFeatures.m_storage.data[36];
  return [MEMORY[0x1E696AD98] numberWithFloat:v2];
}

- (NSNumber)height
{
  if ((self[1].super.isa & 1) == 0)
  {
    return 0;
  }

  LODWORD(v2) = *&self->_windowFeatures.m_storage.data[44];
  return [MEMORY[0x1E696AD98] numberWithFloat:v2];
}

- (NSNumber)_popup
{
  v2 = WORD2(self[1].super.isa);
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)_locationBarVisibility
{
  v2 = *&self[1]._windowFeatures.m_storage.data[4];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)_scrollbarsVisibility
{
  v2 = *&self[1]._windowFeatures.m_storage.data[6];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)_fullscreenDisplay
{
  v2 = *&self[1]._windowFeatures.m_storage.data[10];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)_dialogDisplay
{
  v2 = *&self[1]._windowFeatures.m_storage.data[12];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

@end