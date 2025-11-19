@interface BKPDFSnapshotMetadata
+ (id)snapshotHelperWithPDFDocument:(id)a3 currentPageIndex:(unint64_t)a4;
- (BKPDFSnapshotMetadata)initWithPDFDocument:(id)a3 currentPageIndex:(unint64_t)a4;
- (CGSize)_pageSize:(id)a3;
- (CGSize)leftPageSize;
- (CGSize)rightPageSize;
- (void)_cleanupPageIndicesIfNecessaryWithDocument:(id)a3 currentPageIndex:(unint64_t)a4;
@end

@implementation BKPDFSnapshotMetadata

- (BKPDFSnapshotMetadata)initWithPDFDocument:(id)a3 currentPageIndex:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = BKPDFSnapshotMetadata;
  v7 = [(BKPDFSnapshotMetadata *)&v14 init];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v6 pageCount];
  v9 = v8;
  if (v8 <= a4)
  {
    BCReportAssertionFailureWithMessage();
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *&v7->_leftPageIndex = vnegq_f64(v13);
    p_leftPageIndex = &v7->_leftPageIndex;
LABEL_14:
    BCReportAssertionFailureWithMessage();
    v11 = *p_leftPageIndex;
    goto LABEL_9;
  }

  v7->_leftPageIndex = a4;
  v7->_rightPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  p_leftPageIndex = &v7->_leftPageIndex;
  if ((a4 & 1) == 0)
  {
    if ((a4 | 1) < v8)
    {
      v7->_rightPageIndex = a4 | 1;
    }

    v11 = a4;
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v11 = a4 - 1;
  v7->_leftPageIndex = a4 - 1;
  v7->_rightPageIndex = a4;
LABEL_9:
  if (v11 >= v9)
  {
    sub_137DB8();
  }

  [(BKPDFSnapshotMetadata *)v7 _cleanupPageIndicesIfNecessaryWithDocument:v6 currentPageIndex:a4];
LABEL_12:

  return v7;
}

- (CGSize)_pageSize:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 boundsForBox:1];
    v6 = v5;
    width = v7;
    if (fabs(([v4 rotation] % 180)) >= 0.00999999978)
    {
      height = v6;
    }

    else
    {
      height = width;
      width = v6;
    }
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_cleanupPageIndicesIfNecessaryWithDocument:(id)a3 currentPageIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_leftPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_3;
  }

  rightPageIndex = self->_rightPageIndex;
  v11 = [v6 pageAtIndex:?];
  v8 = v11;
  if (rightPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11)
    {
      [(BKPDFSnapshotMetadata *)self _pageSize:v11];
      self->_leftPageSize.width = v12;
      self->_leftPageSize.height = v13;
      goto LABEL_40;
    }

    self->_leftPageSize = CGSizeZero;
    goto LABEL_3;
  }

  v9 = [v7 pageAtIndex:self->_rightPageIndex];
  [(BKPDFSnapshotMetadata *)self _pageSize:v8];
  self->_leftPageSize.width = v14;
  self->_leftPageSize.height = v15;
  [(BKPDFSnapshotMetadata *)self _pageSize:v9];
  self->_rightPageSize.width = v16;
  self->_rightPageSize.height = v17;
  leftPageIndex = self->_leftPageIndex;
  if (leftPageIndex == a4)
  {
    width = self->_leftPageSize.width;
  }

  else
  {
    width = v16;
  }

  if (leftPageIndex == a4)
  {
    height = self->_leftPageSize.height;
  }

  else
  {
    height = v17;
  }

  v21 = self->_leftPageSize.width != v16;
  if (self->_leftPageSize.height != v17)
  {
    v21 = 1;
  }

  if (!v9 || (height >= width ? (v22 = !v21) : (v22 = 0), !v22))
  {
    if (height >= width)
    {
      if (v21)
      {
        v24 = BKModernPDFLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_137E28();
        }
      }

      else
      {
        if (v9)
        {
          goto LABEL_39;
        }

        v24 = BKModernPDFLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_137DF4();
        }
      }
    }

    else
    {
      v24 = BKModernPDFLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_137E5C();
      }
    }

LABEL_39:
    self->_leftPageSize.width = width;
    self->_leftPageSize.height = height;
    self->_leftPageIndex = a4;
    self->_rightPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_rightPageSize = CGSizeZero;

    if (v8)
    {
LABEL_40:
      v9 = BKModernPDFLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Configured for one page spread image.", v25, 2u);
      }

      goto LABEL_5;
    }

LABEL_3:
    v9 = BKModernPDFLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_137E90();
    }

    goto LABEL_5;
  }

  if (!v8)
  {
    v8 = v9;
    goto LABEL_3;
  }

  v23 = BKModernPDFLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Configured for two page spread image.", buf, 2u);
  }

LABEL_5:
}

+ (id)snapshotHelperWithPDFDocument:(id)a3 currentPageIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [[BKPDFSnapshotMetadata alloc] initWithPDFDocument:v5 currentPageIndex:a4];

  return v6;
}

- (CGSize)leftPageSize
{
  width = self->_leftPageSize.width;
  height = self->_leftPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)rightPageSize
{
  width = self->_rightPageSize.width;
  height = self->_rightPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end