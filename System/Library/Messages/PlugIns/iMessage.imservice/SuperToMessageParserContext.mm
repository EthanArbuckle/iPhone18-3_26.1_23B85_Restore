@interface SuperToMessageParserContext
- (SuperToMessageParserContext)initWithAttributedString:(id)a3 includeMessageParts:(BOOL)a4 isAudioMessage:(BOOL)a5;
- (id)parser:(id)a3 preprocessedAttributesForAttributes:(id)a4 range:(_NSRange)a5;
- (void)dealloc;
- (void)parser:(id)a3 foundAttributes:(id)a4 atCharacterIndex:(int64_t)a5 fileTransferGUID:(id)a6 filename:(id)a7 bookmark:(id)a8 width:(id)a9 height:(id)a10 isAnimoji:(id)a11;
- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 characters:(id)a6;
- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 fileTransferGUID:(id)a6 filename:(id)a7 bookmark:(id)a8 width:(id)a9 height:(id)a10 isAnimoji:(id)a11;
- (void)parserDidEnd:(id)a3;
- (void)parserDidStart:(id)a3 bodyAttributes:(id)a4;
@end

@implementation SuperToMessageParserContext

- (SuperToMessageParserContext)initWithAttributedString:(id)a3 includeMessageParts:(BOOL)a4 isAudioMessage:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SuperToMessageParserContext;
  v7 = [(SuperToMessageParserContext *)&v9 initWithAttributedString:a3];
  if (v7)
  {
    v7->_outHTML = objc_alloc_init(NSMutableString);
    v7->_isSimpleString = 1;
    v7->_includeMessageParts = a4;
    v7->_isAudioMessage = a5;
    v7->_AuxHTML = objc_alloc_init(NSMutableString);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SuperToMessageParserContext;
  [(SuperToMessageParserContext *)&v3 dealloc];
}

- (void)parserDidStart:(id)a3 bodyAttributes:(id)a4
{
  [(NSMutableString *)self->_outHTML appendString:@"<html>"];
  [(NSMutableString *)self->_outHTML appendString:@"<body"];
  [(NSMutableString *)self->_AuxHTML appendString:@"<html>"];
  [(NSMutableString *)self->_AuxHTML appendString:@"<body"];
  v6 = objc_alloc_init(NSMutableString);
  v7 = [a4 objectForKey:IMMessageBackgroundColorAttributeName];
  if (v7)
  {
    [v6 appendFormat:@"background-color:%@;", v7];
  }

  v8 = [a4 objectForKey:IMMessageForegroundColorAttributeName];
  if (v8)
  {
    [v6 appendFormat:@"color:%@;", v8];
  }

  if ([v6 length])
  {
    [(NSMutableString *)self->_outHTML appendFormat:@" style=%@", v6];
    [(NSMutableString *)self->_AuxHTML appendFormat:@" style=%@", v6];
  }

  v9 = [a4 objectForKey:IMBaseWritingDirectionAttributeName];
  if (v9)
  {
    v10 = [v9 integerValue];
    if (v10 == &dword_0 + 1)
    {
      v11 = @" dir=rtl";
      goto LABEL_12;
    }

    if (!v10)
    {
      v11 = @" dir=ltr";
LABEL_12:
      [(NSMutableString *)self->_outHTML appendString:v11];
      [(NSMutableString *)self->_AuxHTML appendString:v11];
    }
  }

  [(NSMutableString *)self->_outHTML appendString:@">"];
  [(NSMutableString *)self->_AuxHTML appendString:@">"];
  if (([(NSMutableString *)self->_AuxHTML isEqualToString:self->_outHTML]& 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        AuxHTML = self->_AuxHTML;
        outHTML = self->_outHTML;
        *buf = 138412546;
        v16 = AuxHTML;
        v17 = 2112;
        v18 = outHTML;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "SuperToMessageParser parseDidStart _AuxHTML != _outHML, _AuxHTML %@, _outHTML %@", buf, 0x16u);
      }
    }
  }
}

- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 characters:(id)a6
{
  v8 = [a4 _stringForKey:IMBackgroundColorAttributeName];
  v41 = [a4 _stringForKey:IMForegroundColorAttributeName];
  v9 = [a4 _stringForKey:IMFontFamilyAttributeName];
  v40 = [objc_msgSend(a4 _numberForKey:{IMFontSizeAttributeName), "integerValue"}];
  v10 = [objc_msgSend(a4 _numberForKey:{IMUnderlineAttributeName), "BOOLValue"}];
  v39 = [objc_msgSend(a4 _numberForKey:{IMBoldAttributeName), "BOOLValue"}];
  v38 = [objc_msgSend(a4 _numberForKey:{IMItalicAttributeName), "BOOLValue"}];
  v37 = [objc_msgSend(a4 _numberForKey:{IMStrikethroughAttributeName), "BOOLValue"}];
  v11 = [a4 objectForKey:IMLinkAttributeName];
  v12 = [a4 objectForKey:IMLinkIsRichLinkAttributeName];
  v13 = [a4 objectForKey:IMMentionConfirmedMention];
  v43 = [a4 objectForKey:IMTextEffectAttributeName];
  [a4 objectForKey:IMTextBoldAttributeName];
  [a4 objectForKey:IMTextItalicAttributeName];
  [a4 objectForKey:IMTextUnderlineAttributeName];
  [a4 objectForKey:IMTextStrikethroughAttributeName];
  if (self->_includeMessageParts)
  {
    v14 = [a4 objectForKey:IMMessagePartAttributeName];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(NSMutableString);
  v16 = v15;
  v42 = v11;
  if (v11)
  {
    v36 = v14;
    v17 = v15;
    [v11 absoluteString];
    v18 = IMCreateEscapedAttributeValueFromString();
    [(NSMutableString *)self->_outHTML appendString:@"<a href="];
    [(NSMutableString *)self->_AuxHTML appendString:@"<a href="];
    [(NSMutableString *)self->_outHTML appendString:v18];
    [(NSMutableString *)self->_AuxHTML appendString:v18];
    if (v12)
    {
      v19 = [v12 BOOLValue];
      [(NSMutableString *)self->_outHTML appendString:@" isRichLink="];
      if (v19)
      {
        v20 = @"1";
      }

      else
      {
        v20 = @"0";
      }

      [(NSMutableString *)self->_outHTML appendString:v20];
      [(NSMutableString *)self->_AuxHTML appendString:@" isRichLink="];
      [(NSMutableString *)self->_AuxHTML appendString:v20];
    }

    [(NSMutableString *)self->_outHTML appendString:@">"];
    [(NSMutableString *)self->_AuxHTML appendString:@">"];

    v16 = v17;
    v14 = v36;
  }

  if (v39)
  {
    [v16 appendString:@"font-weight: bold;"];
  }

  v21 = v43;
  if (v38)
  {
    [v16 appendString:@"font-style: italic;"];
  }

  if ((v10 | v37))
  {
    if (v10)
    {
      v22 = @"text-decoration: underline;";
    }

    else
    {
      v22 = @"text-decoration: line-through;";
    }

    [v16 appendString:v22];
  }

  if ([v9 length])
  {
    v23 = IMCopySafeNameOfFontFamilyName();
    v24 = IMCreateEscapedAttributeValueFromString();
    [v16 appendFormat:@"font-family: '%@';", v24];
  }

  if (v40)
  {
    [v16 appendFormat:@"font-size: %dpx;", v40];
  }

  if ([v41 length])
  {
    [v16 appendFormat:@"color: %@;", v41];
  }

  if ([v8 length])
  {
    [v16 appendFormat:@"background-color: %@;", v8];
  }

  v25 = [v16 length];
  v26 = (v25 | v14) != 0;
  if (v25 | v14)
  {
    [(NSMutableString *)self->_outHTML appendString:@"<span"];
    [(NSMutableString *)self->_AuxHTML appendString:@"<span"];
    if ([v16 length])
    {
      [(NSMutableString *)self->_outHTML appendFormat:@" style=%@", v16];
    }

    if (v14)
    {
      -[NSMutableString appendFormat:](self->_outHTML, "appendFormat:", @" message-part=%d", [v14 intValue]);
      -[NSMutableString appendFormat:](self->_AuxHTML, "appendFormat:", @" message-part=%d", [v14 intValue]);
    }

    [(NSMutableString *)self->_outHTML appendString:@">"];
    [(NSMutableString *)self->_AuxHTML appendString:@">"];
    v21 = v43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 length])
  {
    [(NSMutableString *)self->_outHTML appendString:@"<mention uri="];
    [(NSMutableString *)self->_AuxHTML appendString:@"<mention uri="];
    v27 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:IMMentionHandleAllowedCharacterSet()];
    [(NSMutableString *)self->_outHTML appendString:v27];
    [(NSMutableString *)self->_AuxHTML appendString:v27];
    [(NSMutableString *)self->_outHTML appendString:@">"];
    [(NSMutableString *)self->_AuxHTML appendString:@">"];
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    -[NSMutableString appendFormat:](self->_outHTML, "appendFormat:", @"<texteffect type=%u>", [v21 unsignedIntValue]);
    -[NSMutableString appendFormat:](self->_AuxHTML, "appendFormat:", @"<texteffect type=%u>", [v21 unsignedIntValue]);
  }

  objc_opt_class();
  v30 = objc_opt_isKindOfClass();
  if (v30)
  {
    [(NSMutableString *)self->_outHTML appendString:@"<b>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"<b>"];
  }

  objc_opt_class();
  v31 = objc_opt_isKindOfClass();
  if (v31)
  {
    [(NSMutableString *)self->_outHTML appendString:@"<i>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"<i>"];
  }

  objc_opt_class();
  v32 = objc_opt_isKindOfClass();
  if (v32)
  {
    [(NSMutableString *)self->_outHTML appendString:@"<u>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"<u>"];
  }

  objc_opt_class();
  v33 = objc_opt_isKindOfClass();
  if (v33)
  {
    [(NSMutableString *)self->_outHTML appendString:@"<s>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"<s>"];
  }

  v34 = IMCreateEscapedStringFromString();
  if (v34)
  {
    [(NSMutableString *)self->_outHTML appendString:v34];
    [(NSMutableString *)self->_AuxHTML appendString:v34];
  }

  if (v33)
  {
    [(NSMutableString *)self->_outHTML appendString:@"</s>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"</s>"];
  }

  if (v32)
  {
    [(NSMutableString *)self->_outHTML appendString:@"</u>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"</u>"];
  }

  if (v31)
  {
    [(NSMutableString *)self->_outHTML appendString:@"</i>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"</i>"];
    if ((v30 & 1) == 0)
    {
LABEL_56:
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_63;
    }
  }

  else if ((v30 & 1) == 0)
  {
    goto LABEL_56;
  }

  [(NSMutableString *)self->_outHTML appendString:@"</b>"];
  [(NSMutableString *)self->_AuxHTML appendString:@"</b>"];
  if ((isKindOfClass & 1) == 0)
  {
LABEL_57:
    if (!v28)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(NSMutableString *)self->_outHTML appendString:@"</texteffect>"];
  [(NSMutableString *)self->_AuxHTML appendString:@"</texteffect>"];
  if (!v28)
  {
LABEL_58:
    if (!v26)
    {
      goto LABEL_59;
    }

LABEL_65:
    [(NSMutableString *)self->_outHTML appendString:@"</span>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"</span>"];
    if (!v42)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

LABEL_64:
  [(NSMutableString *)self->_outHTML appendString:@"</mention>"];
  [(NSMutableString *)self->_AuxHTML appendString:@"</mention>"];
  if (v26)
  {
    goto LABEL_65;
  }

LABEL_59:
  if (v42)
  {
LABEL_60:
    [(NSMutableString *)self->_outHTML appendString:@"</a>"];
    [(NSMutableString *)self->_AuxHTML appendString:@"</a>"];
  }

LABEL_66:
  if (([(NSMutableString *)self->_AuxHTML isEqualToString:self->_outHTML]& 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "SuperToMessageParser parser:foundAtrributes:inRange:characters: _AuxHTML != _outHTML", buf, 2u);
      }
    }
  }
}

- (void)parser:(id)a3 foundAttributes:(id)a4 inRange:(_NSRange)a5 fileTransferGUID:(id)a6 filename:(id)a7 bookmark:(id)a8 width:(id)a9 height:(id)a10 isAnimoji:(id)a11
{
  length = a5.length;
  location = a5.location;
  if (a5.length >= 2)
  {
    v17 = a7;
    v18 = IMLogHandleForCategory();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    a7 = v17;
    if (v19)
    {
      *buf = 134217984;
      v28 = length;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Adjacent characters share the same file transfer. Length=%ld", buf, 0xCu);
      a7 = v17;
    }
  }

  if (location < location + length)
  {
    do
    {
      v20 = a3;
      v21 = a4;
      v22 = a6;
      v23 = a3;
      v24 = a4;
      v25 = a6;
      v26 = a7;
      [(SuperToMessageParserContext *)self parser:v20 foundAttributes:v21 atCharacterIndex:location fileTransferGUID:v22 filename:a7 bookmark:a8 width:a9 height:a10 isAnimoji:a11];
      a7 = v26;
      a6 = v25;
      a4 = v24;
      a3 = v23;
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)parser:(id)a3 foundAttributes:(id)a4 atCharacterIndex:(int64_t)a5 fileTransferGUID:(id)a6 filename:(id)a7 bookmark:(id)a8 width:(id)a9 height:(id)a10 isAnimoji:(id)a11
{
  v12 = a9;
  v11 = a10;
  if (!a9)
  {
    v12 = &off_119380;
  }

  if (!a10)
  {
    v11 = &off_119380;
  }

  v67 = v11;
  v68 = v12;
  if (a6)
  {
    v13 = a7;
    self->_isSimpleString = 0;
    v16 = [[IMDFileTransferCenter transferForGUID:a3 sharedInstance:a4], "transferForGUID:", a6];
    if (v16)
    {
      v17 = v16;
      if ([objc_msgSend(v16 "transferredFilename")])
      {
        v13 = [objc_msgSend(v17 "transferredFilename")];
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v13;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Filename from transferred file name: %@", buf, 0xCu);
          }
        }
      }

      if (![v13 length])
      {
        v13 = [objc_msgSend(v17 "localPath")];
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v13;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Filename from local path: %@", buf, 0xCu);
          }
        }
      }

      if (v13)
      {
        v20 = [v13 lastPathComponent];
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v20;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Filename from last path component: %@", buf, 0xCu);
          }
        }

        if (v20)
        {
          v22 = +[IMFileManager defaultHFSFileManager];
          v65 = IMCreateEscapedAttributeValueFromString();
          v64 = [v17 userInfo];
          v74 = 0;
          v23 = [+[IMFileManager defaultHFSFileManager](IMFileManager "defaultHFSFileManager")];
          -[NSMutableString appendFormat:](self->_outHTML, "appendFormat:", @"<FILE name=%@ width=%ld height=%ld datasize=%llu", v65, [v68 integerValue], objc_msgSend(v67, "integerValue"), objc_msgSend(v23, "fileSize"));
          -[NSMutableString appendFormat:](self->_AuxHTML, "appendFormat:", @"<FILE name=%@ width=%ld height=%ld datasize=%llu", v65, [v68 integerValue], objc_msgSend(v67, "integerValue"), objc_msgSend(v23, "fileSize"));
          if (a11)
          {
            v24 = IMCreateEscapedAttributeValueFromString();
            [a11 stringValue];
            v25 = IMCreateEscapedAttributeValueFromString();
            v26 = v25;
            if (v24 && v25)
            {
              [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v24, v25];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v24, v26];
            }
          }

          if ([objc_msgSend(v22 MIMETypeOfPath:{v20), "length"}])
          {
            v27 = IMCreateEscapedAttributeValueFromString();
            v28 = IMCreateEscapedAttributeValueFromString();
            v29 = v28;
            if (v27 && v28)
            {
              [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v27, v28];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v27, v29];
            }
          }

          if ([objc_msgSend(v22 UTITypeOfPath:{v20), "length"}])
          {
            v30 = IMCreateEscapedAttributeValueFromString();
            v31 = IMCreateEscapedAttributeValueFromString();
            v32 = v31;
            if (v30 && v31)
            {
              [(NSMutableString *)self->_outHTML appendFormat:@" %@=%@", v30, v31];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v30, v32];
            }
          }

          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_4074C;
          v73[3] = &unk_112B80;
          v73[4] = self;
          [(__CFString *)v64 enumerateKeysAndObjectsUsingBlock:v73];
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [v17 isSticker];
              v35 = @"NO";
              if (v34)
              {
                v35 = @"YES";
              }

              *buf = 138412546;
              v76 = v17;
              v77 = 2112;
              v78 = v35;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "transfer %@ isSticker %@", buf, 0x16u);
            }
          }

          if ([v17 isSticker])
          {
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_40830;
            v70[3] = &unk_112BA8;
            v71 = [v17 stickerUserInfo];
            v72 = self;
            [v71 enumerateKeysAndObjectsUsingBlock:v70];
          }

          if ([v17 isAdaptiveImageGlyph])
          {
            if ([objc_msgSend(v17 "adaptiveImageGlyphContentIdentifier")])
            {
              v36 = IMCreateEscapedAttributeValueFromString();
              [(NSMutableString *)self->_outHTML appendFormat:@" emoji-image-id=%@", v36];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" emoji-image-id=%@", v36];
            }

            if ([objc_msgSend(v17 "adaptiveImageGlyphContentDescription")])
            {
              v37 = IMCreateEscapedAttributeValueFromString();
              [(NSMutableString *)self->_outHTML appendFormat:@" emoji-image-description=%@", v37];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" emoji-image-description=%@", v37];
            }
          }

          if (self->_includeMessageParts)
          {
            v38 = [a4 objectForKey:IMMessagePartAttributeName];
            v39 = v38;
            if (v38)
            {
              -[NSMutableString appendFormat:](self->_outHTML, "appendFormat:", @" message-part=%d", [v38 intValue]);
              -[NSMutableString appendFormat:](self->_AuxHTML, "appendFormat:", @" message-part=%d", [v39 intValue]);
            }
          }

          if (self->_isAudioMessage)
          {
            [a4 objectForKey:IMAudioTranscription];
            v40 = IMCreateEscapedAttributeValueFromString();
            if (v40)
            {
              [(NSMutableString *)self->_outHTML appendFormat:@" audio-transcription=%@", v40];
              [(NSMutableString *)self->_AuxHTML appendFormat:@" audio-transcription=%@", v40];
            }
          }

          [(NSMutableString *)self->_outHTML appendString:@"/>"];
          [(NSMutableString *)self->_AuxHTML appendString:@"/>"];
          if ([v17 isAuxImage])
          {
            v41 = -[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), "transferForGUID:", +[IMFileTransfer AuxGUIDFromFileTransferGUID:](IMFileTransfer, "AuxGUIDFromFileTransferGUID:", [v17 guid]));
            v42 = IMOSLoggingEnabled();
            if (v41)
            {
              if (v42)
              {
                v43 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = [v17 guid];
                  *buf = 138412290;
                  v76 = v44;
                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "We have an Aux transfer %@", buf, 0xCu);
                }
              }

              if ([objc_msgSend(v41 "transferredFilename")])
              {
                v45 = [objc_msgSend(v41 "transferredFilename")];
                if (IMOSLoggingEnabled())
                {
                  v46 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v76 = v45;
                    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "Filename from transferred file name: %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v45 = 0;
              }

              if (![v45 length])
              {
                v45 = [objc_msgSend(v41 "localPath")];
                if (IMOSLoggingEnabled())
                {
                  v49 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v76 = v45;
                    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Filename from local path: %@", buf, 0xCu);
                  }
                }
              }

              if (v45)
              {
                v50 = [v45 lastPathComponent];
                if (IMOSLoggingEnabled())
                {
                  v51 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v76 = v50;
                    _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Filename from last path component: %@", buf, 0xCu);
                  }
                }

                if (v50)
                {
                  v52 = +[IMFileManager defaultHFSFileManager];
                  v66 = IMCreateEscapedAttributeValueFromString();
                  v64 = [v41 userInfo];
                  -[NSMutableString appendFormat:](self->_AuxHTML, "appendFormat:", @"<FILE name=%@ width=%ld height=%ld datasize=%llu ", v66, [v68 integerValue], objc_msgSend(v67, "integerValue"), objc_msgSend(objc_msgSend(+[IMFileManager defaultHFSFileManager](IMFileManager, "defaultHFSFileManager"), "attributesOfItemAtPath:error:", objc_msgSend(v41, "localPath"), &v74), "fileSize"));
                  [(NSMutableString *)self->_AuxHTML appendFormat:@"iris=%@", @"yes"];
                  if (a11)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v53 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v76 = a11;
                        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "WARNING emoji %@ not nil seems wrong for Aux transfer ", buf, 0xCu);
                      }
                    }

                    v54 = IMCreateEscapedAttributeValueFromString();
                    [a11 stringValue];
                    v55 = IMCreateEscapedAttributeValueFromString();
                    v56 = v55;
                    if (v54 && v55)
                    {
                      [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v54, v55];
                    }
                  }

                  if ([objc_msgSend(v52 MIMETypeOfPath:{v50), "length"}])
                  {
                    v57 = IMCreateEscapedAttributeValueFromString();
                    v58 = IMCreateEscapedAttributeValueFromString();
                    v59 = v58;
                    if (v57 && v58)
                    {
                      [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v57, v58];
                    }
                  }

                  if ([objc_msgSend(v52 UTITypeOfPath:{v50), "length"}])
                  {
                    v60 = IMCreateEscapedAttributeValueFromString();
                    v61 = IMCreateEscapedAttributeValueFromString();
                    v62 = v61;
                    if (v60 && v61)
                    {
                      [(NSMutableString *)self->_AuxHTML appendFormat:@" %@=%@", v60, v61];
                    }
                  }

                  v69[0] = _NSConcreteStackBlock;
                  v69[1] = 3221225472;
                  v69[2] = sub_40A28;
                  v69[3] = &unk_112B80;
                  v69[4] = self;
                  [(__CFString *)v64 enumerateKeysAndObjectsUsingBlock:v69];
                  [(NSMutableString *)self->_AuxHTML appendString:@"/>"];
                }
              }
            }

            else if (v42)
            {
              v47 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                v48 = [v17 guid];
                *buf = 138412290;
                v76 = v48;
                _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "Expected to find video transfer guid %@", buf, 0xCu);
              }
            }
          }

          if (IMOSLoggingEnabled())
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v76 = v17;
              v77 = 2112;
              v78 = v64;
              _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "Parsed file transfer: %@    user info: %@", buf, 0x16u);
            }
          }
        }
      }
    }
  }
}

- (void)parserDidEnd:(id)a3
{
  [(NSMutableString *)self->_outHTML appendString:@"</body></html>"];
  AuxHTML = self->_AuxHTML;

  [(NSMutableString *)AuxHTML appendString:@"</body></html>"];
}

- (id)parser:(id)a3 preprocessedAttributesForAttributes:(id)a4 range:(_NSRange)a5
{
  v5 = a4;
  v21 = IMDataDetectorResultAttributeName;
  v22 = [a4 objectForKey:?];
  v20 = IMMyNameAttributeName;
  v16 = [(NSMutableDictionary *)v5 objectForKey:?];
  v19 = IMSmileyDescriptionAttributeName;
  v15 = [(NSMutableDictionary *)v5 objectForKey:?];
  v18 = IMSmileySpeechDescriptionAttributeName;
  v14 = [(NSMutableDictionary *)v5 objectForKey:?];
  v17 = IMSmileyLengthAttributeName;
  v13 = [(NSMutableDictionary *)v5 objectForKey:?];
  v23 = IMUniqueSmileyNumberAttributeName;
  v12 = [(NSMutableDictionary *)v5 objectForKey:?];
  v6 = [NSArray arrayWithObjects:IMFontFamilyAttributeName, IMFontSizeAttributeName, IMItalicAttributeName, IMBoldAttributeName, IMUnderlineAttributeName, IMStrikethroughAttributeName, IMLinkAttributeName, IMPreformattedAttributeName, IMForegroundColorAttributeName, IMBackgroundColorAttributeName, IMMessageBackgroundColorAttributeName, IMMessageForegroundColorAttributeName, IMBaseWritingDirectionAttributeName, v23, v17, v20, v21, v19, v20, IMInlineMediaHeightAttributeName, IMInlineMediaWidthAttributeName, IMSearchTermAttributeName, v18, IMReferencedHandleAttributeName, IMFileTransferGUIDAttributeName, IMFileBookmarkAttributeName, IMFilenameAttributeName, IMBreadcrumbTextMarkerAttributeName, IMMentionConfirmedMention, IMTextEffectAttributeName, IMTextBoldAttributeName, IMTextItalicAttributeName, IMTextUnderlineAttributeName, IMTextStrikethroughAttributeName, 0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([(NSMutableDictionary *)v5 objectForKey:*(*(&v25 + 1) + 8 * i)])
        {
          self->_isSimpleString = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  if (self->_includeMessageParts)
  {
    self->_isSimpleString = 0;
  }

  if (v22 || v16 || v15 || v14 || v13 || v12)
  {
    v5 = [NSMutableDictionary dictionaryWithDictionary:v5];
    [(NSMutableDictionary *)v5 removeObjectForKey:v21];
    [(NSMutableDictionary *)v5 removeObjectForKey:v20];
    [(NSMutableDictionary *)v5 removeObjectForKey:v19];
    [(NSMutableDictionary *)v5 removeObjectForKey:v18];
    [(NSMutableDictionary *)v5 removeObjectForKey:v17];
    [(NSMutableDictionary *)v5 removeObjectForKey:v23];
  }

  return v5;
}

@end