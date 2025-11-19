@interface GetClassID
@end

@implementation GetClassID

uint64_t __remoteFormatReader_GetClassID_block_invoke()
{
  FigFormatReaderGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t __remoteTrackReader_GetClassID_block_invoke()
{
  FigTrackReaderGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t __remoteSampleCursor_GetClassID_block_invoke()
{
  FigSampleCursorGetClassID();

  return FigBaseClassRegisterClass();
}

@end