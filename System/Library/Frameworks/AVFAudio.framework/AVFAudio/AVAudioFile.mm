@interface AVAudioFile
- (AVAudioFile)init;
- (AVAudioFile)initForReading:(NSURL *)fileURL commonFormat:(AVAudioCommonFormat)format interleaved:(BOOL)interleaved error:(NSError *)outError;
- (AVAudioFile)initForWriting:(NSURL *)fileURL settings:(NSDictionary *)settings commonFormat:(AVAudioCommonFormat)format interleaved:(BOOL)interleaved error:(NSError *)outError;
- (AVAudioFramePosition)framePosition;
- (AVAudioFramePosition)length;
- (BOOL)isOpen;
- (BOOL)readIntoBuffer:(AVAudioPCMBuffer *)buffer error:(NSError *)outError;
- (BOOL)writeFromBuffer:(const AVAudioPCMBuffer *)buffer error:(NSError *)outError;
- (id)initForReadingFromExtAudioFile:(OpaqueExtAudioFile *)file commonFormat:(unint64_t)format interleaved:(BOOL)interleaved error:(id *)error;
- (id)initSecondaryReader:(id)reader format:(id)format error:(id *)error;
- (void)close;
- (void)dealloc;
- (void)setFramePosition:(AVAudioFramePosition)framePosition;
@end

@implementation AVAudioFile

- (void)setFramePosition:(AVAudioFramePosition)framePosition
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr + 18);
  v6 = self->_impl.__ptr_;
  if (*(v6 + 1))
  {
    v7 = AVAudioFileImpl::CheckClientFormatSet(v6);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 849, "[AVAudioFile setFramePosition:]", "_impl->CheckClientFormatSet()", v7, 0);
    v8 = ExtAudioFileSeek(*(self->_impl.__ptr_ + 1), framePosition);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 850, "[AVAudioFile setFramePosition:]", "ExtAudioFileSeek(_impl->_extAudioFile, pos)", v8, 0);
  }

  os_unfair_lock_unlock(ptr + 18);
}

- (AVAudioFramePosition)framePosition
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr + 18);
  v4 = self->_impl.__ptr_;
  if (*(v4 + 1))
  {
    outFrameOffset = 0;
    v5 = AVAudioFileImpl::CheckClientFormatSet(v4);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 838, "[AVAudioFile framePosition]", "_impl->CheckClientFormatSet()", v5, 0);
    v6 = ExtAudioFileTell(*(self->_impl.__ptr_ + 1), &outFrameOffset);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 839, "[AVAudioFile framePosition]", "ExtAudioFileTell(_impl->_extAudioFile, &pos)", v6, 0);
    v7 = outFrameOffset;
  }

  else
  {
    v7 = -1;
  }

  os_unfair_lock_unlock(ptr + 18);
  return v7;
}

- (AVAudioFramePosition)length
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr + 18);
  v4 = self->_impl.__ptr_;
  v5 = *(v4 + 1);
  v6 = *(v4 + 4);
  if (v5)
  {
    v7 = v6 == -1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    outPropertyData = 0;
    ioPropertyDataSize = 8;
    Property = ExtAudioFileGetProperty(v5, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 825, "[AVAudioFile length]", "ExtAudioFileGetProperty(_impl->_extAudioFile, kExtAudioFileProperty_FileLengthFrames, &propSize, &length)", Property, 0);
    v6 = outPropertyData;
    *(self->_impl.__ptr_ + 4) = outPropertyData;
  }

  os_unfair_lock_unlock(ptr + 18);
  return v6;
}

- (BOOL)writeFromBuffer:(const AVAudioPCMBuffer *)buffer error:(NSError *)outError
{
  v6 = buffer;
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 756, "[AVAudioFile writeFromBuffer:error:]", "buffer != nil", v6 != 0);
  if ([(AVAudioPCMBuffer *)v6 frameCapacity])
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr + 18);
    v8 = *(self->_impl.__ptr_ + 1) != 0;
    v18 = 0;
    v9 = _AVAE_CheckAndReturnErr(765, "[AVAudioFile writeFromBuffer:error:]", "_impl->isOpen()", v8, 4294967253, &v18);
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      if (outError)
      {
        v12 = v10;
        v13 = 0;
        *outError = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = AVAudioFileImpl::CheckClientFormatSet(self->_impl.__ptr_);
      _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 770, "[AVAudioFile writeFromBuffer:error:]", "_impl->CheckClientFormatSet()", v14, outError);
      v15 = self->_impl.__ptr_;
      *(v15 + 4) = -1;
      v16 = ExtAudioFileWrite(*(v15 + 1), [(AVAudioPCMBuffer *)v6 frameLength], [(AVAudioBuffer *)v6 audioBufferList]);
      v13 = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 774, "[AVAudioFile writeFromBuffer:error:]", "ExtAudioFileWrite(_impl->_extAudioFile, buffer.frameLength, buffer.audioBufferList)", v16, outError);
    }

    os_unfair_lock_unlock(ptr + 18);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)readIntoBuffer:(AVAudioPCMBuffer *)buffer error:(NSError *)outError
{
  v6 = buffer;
  LOBYTE(outError) = [(AVAudioFile *)self readIntoBuffer:v6 frameCount:[(AVAudioPCMBuffer *)v6 frameCapacity] error:outError];

  return outError;
}

- (BOOL)isOpen
{
  selfCopy = self;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr + 18);
  LOBYTE(selfCopy) = *(selfCopy->_impl.__ptr_ + 1) != 0;
  os_unfair_lock_unlock(ptr + 18);
  return selfCopy;
}

- (void)close
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr + 18);
  v4 = self->_impl.__ptr_;
  if (v4)
  {
    v5 = *(v4 + 1);
    if (v5)
    {
      ExtAudioFileDispose(v5);
      *(v4 + 1) = 0;
    }
  }

  os_unfair_lock_unlock(ptr + 18);
}

- (void)dealloc
{
  [(AVAudioFile *)self close];
  std::unique_ptr<AVAudioFileImpl>::reset[abi:ne200100](&self->_impl, 0);
  v3.receiver = self;
  v3.super_class = AVAudioFile;
  [(AVAudioFile *)&v3 dealloc];
}

- (id)initSecondaryReader:(id)reader format:(id)format error:(id *)error
{
  readerCopy = reader;
  formatCopy = format;
  v12.receiver = self;
  v12.super_class = AVAudioFile;
  if ([(AVAudioFile *)&v12 init])
  {
    operator new();
  }

  if (error)
  {
    v10 = 0;
    *error = 0;
  }

  return 0;
}

- (AVAudioFile)initForWriting:(NSURL *)fileURL settings:(NSDictionary *)settings commonFormat:(AVAudioCommonFormat)format interleaved:(BOOL)interleaved error:(NSError *)outError
{
  v10 = fileURL;
  v11 = settings;
  v14.receiver = self;
  v14.super_class = AVAudioFile;
  if ([(AVAudioFile *)&v14 init])
  {
    operator new();
  }

  if (outError)
  {
    v12 = 0;
    *outError = 0;
  }

  return 0;
}

- (id)initForReadingFromExtAudioFile:(OpaqueExtAudioFile *)file commonFormat:(unint64_t)format interleaved:(BOOL)interleaved error:(id *)error
{
  v9.receiver = self;
  v9.super_class = AVAudioFile;
  if ([(AVAudioFile *)&v9 init])
  {
    operator new();
  }

  if (error)
  {
    v7 = 0;
    *error = 0;
  }

  return 0;
}

- (AVAudioFile)initForReading:(NSURL *)fileURL commonFormat:(AVAudioCommonFormat)format interleaved:(BOOL)interleaved error:(NSError *)outError
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = fileURL;
  v12.receiver = self;
  v12.super_class = AVAudioFile;
  if ([(AVAudioFile *)&v12 init])
  {
    operator new();
  }

  if (outError)
  {
    v7 = 0;
    *outError = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (AVAudioFile)init
{
  v3.receiver = self;
  v3.super_class = AVAudioFile;
  if ([(AVAudioFile *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end