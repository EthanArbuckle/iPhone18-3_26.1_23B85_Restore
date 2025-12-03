@interface WKFileUploadMediaTranscoder
- (WKFileUploadMediaTranscoder)initWithItems:(id)items videoCount:(unint64_t)count completionHandler:(void *)handler;
- (id).cxx_construct;
- (id)_temporaryDirectoryCreateIfNecessary;
- (void)_dismissProgress;
- (void)_finishedProcessing;
- (void)_processItemAtIndex:(unint64_t)index;
- (void)_updateProgress:(id)progress;
- (void)start;
@end

@implementation WKFileUploadMediaTranscoder

- (WKFileUploadMediaTranscoder)initWithItems:(id)items videoCount:(unint64_t)count completionHandler:(void *)handler
{
  v14.receiver = self;
  v14.super_class = WKFileUploadMediaTranscoder;
  v8 = [(WKFileUploadMediaTranscoder *)&v14 init];
  if (v8)
  {
    if (items)
    {
      itemsCopy = items;
    }

    m_ptr = v8->_items.m_ptr;
    v8->_items.m_ptr = items;
    if (m_ptr)
    {
    }

    v8->_processedVideoCount = 0;
    v11 = *handler;
    *handler = 0;
    ptr = v8->_completionHandler.m_callableWrapper.__ptr_;
    v8->_completionHandler.m_callableWrapper.__ptr_ = v11;
    v8->_videoCount = count;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  return v8;
}

- (void)start
{
  v3 = [objc_alloc(getPXActivityProgressControllerClass()) init];
  m_ptr = self->_progressController.m_ptr;
  self->_progressController.m_ptr = v3;
  if (m_ptr)
  {

    v6 = self->_progressController.m_ptr;
  }

  else
  {
    v6 = v3;
  }

  WebCore::localizedString(&v19, @"Preparing (file upload)", v4);
  v7 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&to, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    to = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  [(PXActivityProgressController *)v6 setTitle:to];
  v11 = to;
  to = 0;
  if (v11)
  {
  }

  v12 = v19;
  v19 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  [(PXActivityProgressController *)self->_progressController.m_ptr showAnimated:1 allowDelay:1, v19, to];
  v13 = self->_progressController.m_ptr;
  v19 = 0;
  objc_initWeak(&v19, self);
  to = 0;
  objc_moveWeak(&to, &v19);
  v14 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v14 = MEMORY[0x1E69E9818];
  *(v14 + 1) = 50331650;
  *(v14 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKFileUploadMediaTranscoder start]::$_4>([WKFileUploadMediaTranscoder start]::$_4)::{lambda(void *)#1}::__invoke;
  *(v14 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKFileUploadMediaTranscoder start]::$_4>([WKFileUploadMediaTranscoder start]::$_4)::descriptor;
  *(v14 + 4) = 0;
  objc_moveWeak(v14 + 4, &to);
  objc_destroyWeak(&to);
  [(PXActivityProgressController *)v13 setCancellationHandler:v14];
  _Block_release(v14);
  objc_destroyWeak(&v19);
  v15 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updateProgress_ selector:0 userInfo:1 repeats:0.100000001];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  v18 = self->_progressTimer.m_ptr;
  self->_progressTimer.m_ptr = v16;
  if (v18)
  {
  }

  [(WKFileUploadMediaTranscoder *)self _processItemAtIndex:0];
}

- (void)_processItemAtIndex:(unint64_t)index
{
  if (([(PXActivityProgressController *)self->_progressController.m_ptr isCancelled]& 1) != 0)
  {
    return;
  }

  if ([(NSArray *)self->_items.m_ptr count]> index)
  {
    v5 = [(NSArray *)self->_items.m_ptr objectAtIndex:index];
    if ([v5 isVideo])
    {
LABEL_7:
      _temporaryDirectoryCreateIfNecessary = [(WKFileUploadMediaTranscoder *)self _temporaryDirectoryCreateIfNecessary];
      if (_temporaryDirectoryCreateIfNecessary)
      {
        v7 = _temporaryDirectoryCreateIfNecessary;
        v8 = [objc_msgSend(objc_msgSend(v5 "fileURL")];
        v9 = [v7 stringByAppendingPathComponent:{objc_msgSend(v8, "stringByAppendingPathExtension:", objc_msgSend(objc_msgSend(*MEMORY[0x1E6982F80], "preferredFilenameExtension"), "uppercaseString"))}];
        v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
        v11 = [objc_alloc((*MEMORY[0x1E69E2260])()) initWithURL:objc_msgSend(v5 options:{"fileURL"), 0}];
        v12 = objc_alloc((*MEMORY[0x1E69E2348])());
        v13 = [v12 initWithAsset:v11 presetName:PAL::get_AVFoundation_AVAssetExportPresetHighestQuality(v12)];
        m_ptr = self->_exportSession.m_ptr;
        self->_exportSession.m_ptr = v13;
        if (m_ptr)
        {

          v13 = self->_exportSession.m_ptr;
        }

        [(AVAssetExportSession *)self->_exportSession.m_ptr setOutputFileType:PAL::get_AVFoundation_AVFileTypeQuickTimeMovie([(AVAssetExportSession *)v13 setOutputURL:v10])];
        v15 = self->_exportSession.m_ptr;
        v17 = 0;
        objc_initWeak(&v17, self);
        indexCopy = index;
        to = 0;
        objc_moveWeak(&to, &v17);
        v20 = indexCopy;
        v16 = malloc_type_malloc(0x30uLL, 0x10E00401A191054uLL);
        *v16 = MEMORY[0x1E69E9818];
        *(v16 + 1) = 50331650;
        *(v16 + 2) = WTF::BlockPtr<void ()(void)>::fromCallable<[WKFileUploadMediaTranscoder _processItemAtIndex:]::$_5>([WKFileUploadMediaTranscoder _processItemAtIndex:]::$_5)::{lambda(void *)#1}::__invoke;
        *(v16 + 3) = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKFileUploadMediaTranscoder _processItemAtIndex:]::$_5>([WKFileUploadMediaTranscoder _processItemAtIndex:]::$_5)::descriptor;
        *(v16 + 4) = 0;
        objc_moveWeak(v16 + 4, &to);
        *(v16 + 5) = v20;
        objc_destroyWeak(&to);
        [(AVAssetExportSession *)v15 exportAsynchronouslyWithCompletionHandler:v16];
        _Block_release(v16);
        objc_destroyWeak(&v17);
        if (v11)
        {
        }

        return;
      }
    }

    else
    {
      while (++index != [(NSArray *)self->_items.m_ptr count])
      {
        v5 = [(NSArray *)self->_items.m_ptr objectAtIndex:index];
        if ([v5 isVideo])
        {
          goto LABEL_7;
        }
      }
    }
  }

  [(WKFileUploadMediaTranscoder *)self _finishedProcessing];
}

- (void)_finishedProcessing
{
  [(WKFileUploadMediaTranscoder *)self _dismissProgress];
  ptr = self->_completionHandler.m_callableWrapper.__ptr_;
  self->_completionHandler.m_callableWrapper.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 16))(ptr, self->_items.m_ptr);
    v4 = *(*ptr + 8);

    v4(ptr);
  }
}

- (void)_dismissProgress
{
  [(NSTimer *)self->_progressTimer.m_ptr invalidate];
  m_ptr = self->_progressController.m_ptr;

  [(PXActivityProgressController *)m_ptr hideAnimated:0 allowDelay:0];
}

- (void)_updateProgress:(id)progress
{
  [(AVAssetExportSession *)self->_exportSession.m_ptr progress];
  m_ptr = self->_progressController.m_ptr;
  v6 = ((v5 + self->_processedVideoCount) / self->_videoCount);

  [(PXActivityProgressController *)m_ptr setFractionCompleted:v6];
}

- (id)_temporaryDirectoryCreateIfNecessary
{
  if (self->_temporaryDirectoryPath.m_ptr)
  {
    v8 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      if (v8)
      {
        return self->_temporaryDirectoryPath.m_ptr;
      }
    }
  }

  TemporaryDirectory = WTF::FileSystemImpl::createTemporaryDirectory(@"WKVideoUpload", a2);
  v4 = TemporaryDirectory;
  if (TemporaryDirectory)
  {
    v5 = TemporaryDirectory;
  }

  m_ptr = self->_temporaryDirectoryPath.m_ptr;
  self->_temporaryDirectoryPath.m_ptr = v4;
  if (m_ptr)
  {

    return self->_temporaryDirectoryPath.m_ptr;
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end