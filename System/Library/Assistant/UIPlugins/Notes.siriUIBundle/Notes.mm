void sub_5E5C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  performBlockOnMainThread();
}

void sub_5EF0(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 uniqueKey];
  v4 = [*(a1 + 40) currentThumbnailConfigurationUniqueKey];
  v5 = [v3 isEqual:v4];

  if (!v5)
  {
    return;
  }

  v6 = [*(a1 + 32) image];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) isThumbnailPresent];

    if (v8)
    {
      v9 = [*(a1 + 32) image];
      v10 = [*(a1 + 40) thumbnailImageView];
      [v10 setImage:v9];

      if (+[UIDevice ic_isVision])
      {
        +[UIColor ic_noteEditorBackgroundColor];
      }

      else
      {
        +[UIColor secondarySystemGroupedBackgroundColor];
      }
      v16 = ;
      v17 = [*(a1 + 40) thumbnailImageView];
      [v17 setBackgroundColor:v16];

      [*(a1 + 40) ic_hairlineWidth];
      v19 = v18;
      v20 = [*(a1 + 40) thumbnailImageView];
      v21 = [v20 layer];
      [v21 setBorderWidth:v19];

      v22 = [*(a1 + 40) thumbnailImageView];
      [v22 setHidden:0];

      v23 = [*(a1 + 40) thumbnailImageView];
      v24 = [v23 contentMode];
      v25 = [*(a1 + 32) preferredContentMode];

      if (v24 == v25)
      {
        return;
      }

      v26 = [*(a1 + 32) preferredContentMode];
      v27 = [*(a1 + 40) thumbnailImageView];
      [v27 setContentMode:v26];
LABEL_14:

      return;
    }
  }

  v11 = [*(a1 + 40) thumbnailImageView];
  v12 = [v11 image];

  if (v12)
  {
    v13 = [*(a1 + 40) thumbnailImageView];
    [v13 setImage:0];
  }

  v14 = [*(a1 + 40) thumbnailImageView];
  v15 = [v14 isHidden];

  if ((v15 & 1) == 0)
  {
    v27 = [*(a1 + 40) thumbnailImageView];
    [v27 setHidden:1];
    goto LABEL_14;
  }
}

void sub_62F8(id a1, ICNoteResultsListCollectionViewCell *a2, UITraitCollection *a3)
{
  v3 = a2;
  v8 = +[UIColor quaternaryLabelColor];
  v4 = v8;
  v5 = [v8 CGColor];
  v6 = [(ICNoteResultsListCollectionViewCell *)v3 thumbnailImageView];

  v7 = [v6 layer];
  [v7 setBorderColor:v5];
}

void sub_6A44(id a1)
{
  v3 = [[NoteContext alloc] initWithPrivateQueue];
  v1 = [v3 managedObjectContext];
  v2 = qword_201F8;
  qword_201F8 = v1;
}

void sub_6AE4(id a1)
{
  v3 = +[ICNoteContext sharedContext];
  v1 = [v3 workerManagedObjectContext];
  v2 = qword_20208;
  qword_20208 = v1;
}

void sub_6B84(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("com.apple.notes.load-data-queue", attr);
  v3 = qword_20218;
  qword_20218 = v2;
}

void sub_722C(uint64_t a1)
{
  v3 = [*(a1 + 32) note];
  v4 = [v3 isModernNote];
  if ((v4 & 1) != 0 || ([*(a1 + 32) invitation], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() modernBackgroundContext];
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = [objc_opt_class() legacyBackgroundContext];
  }

LABEL_7:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7344;
  v10[3] = &unk_185B0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [v9 performBlock:v10];
}

uint64_t sub_7344(uint64_t a1)
{
  [*(a1 + 32) loadDataWithContext:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_93D8(uint64_t a1)
{
  [*(a1 + 32) setStalenessInterval:0.0];
  v1 = +[ICNoteContext sharedContext];
  [v1 refreshAll];
}

void sub_9F48(id a1, ICBaseNoteResultsCollectionViewCell *a2, UITraitCollection *a3)
{
  v3 = a2;
  [(ICBaseNoteResultsCollectionViewCell *)v3 updateViewStateProperties];
  [(ICBaseNoteResultsCollectionViewCell *)v3 synchronouslyLoadConfigurationDataAndUpdate];
}

uint64_t sub_A4B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_A4D0(uint64_t a1)
{
  v2 = objc_alloc_init(SANoteObject);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) title];
  [*(*(*(a1 + 40) + 8) + 40) setTitle:v5];

  v6 = [*(a1 + 32) modificationDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastModifiedDate:v6];

  v7 = [*(a1 + 32) creationDate];
  [*(*(*(a1 + 40) + 8) + 40) setCreatedDate:v7];

  v8 = [ICAppURLUtilities appURLForNote:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setIdentifier:v8];

  v9 = [*(a1 + 32) isPasswordProtected];
  v10 = *(*(*(a1 + 40) + 8) + 40);

  return [v10 setRestricted:v9];
}

id sub_A5E0(uint64_t a1)
{
  v2 = objc_alloc_init(SANoteObject);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) title];
  [*(*(*(a1 + 40) + 8) + 40) setTitle:v5];

  v6 = [*(a1 + 32) modificationDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastModifiedDate:v6];

  v7 = [*(a1 + 32) creationDate];
  [*(*(*(a1 + 40) + 8) + 40) setCreatedDate:v7];

  v8 = [ICAppURLUtilities appURLForHTMLNote:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setIdentifier:v8];

  v9 = *(*(*(a1 + 40) + 8) + 40);

  return [v9 setRestricted:0];
}

void sub_A9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A9E0(void *a1)
{
  v6 = [ICNote notesMatchingPredicate:a1[4] context:a1[5]];
  v2 = [v6 firstObject];
  v3 = ICProtocolCast();
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_AA78(uint64_t a1)
{
  v5 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:0];
  v2 = ICProtocolCast();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_AF0C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 description];
  v6 = [v5 UTF8String];
  v7 = [a2 contents];
  v8 = 136315394;
  v9 = v6;
  v10 = 2080;
  v11 = [v7 UTF8String];
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "NotesAssistantNoteProvider initializing with note identifier %s, contents %s", &v8, 0x16u);
}