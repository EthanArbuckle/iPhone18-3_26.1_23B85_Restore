@interface ComposeBodyFieldBundleController
+ (id)log;
- (BOOL)_webProcessPlugInBrowserContextController:(id)controller shouldChangeSelectedRange:(id)range toRange:(id)toRange affinity:(int64_t)affinity stillSelecting:(BOOL)selecting;
- (ComposeBodyFieldBundleController)initWithPlugIn:(id)in contextController:(id)controller;
- (MFComposeBodyFieldObserver)observerProxy;
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
- (void)_performSignatureControllerMethodOnPage:(id)page withArguments:(id)arguments;
- (void)_webProcessPlugInBrowserContextControllerDidChangeByEditing:(id)editing;
- (void)addLink:(id)link;
- (void)addMarkupString:(id)string quote:(BOOL)quote emptyFirst:(BOOL)first prepended:(BOOL)prepended composeType:(int64_t)type attachmentInfoByURL:(id)l;
- (void)addTextDescriptionToLink:(id)link;
- (void)appendOrReplace:(id)replace withMarkupString:(id)string quote:(BOOL)quote composeType:(int64_t)type attachmentInfoByURL:(id)l completionHandler:(id)handler;
- (void)containsRichText:(id)text;
- (void)countDuplicatedAttachments:(id)attachments completionHandler:(id)handler;
- (void)displayAttachmentWithIdentifierAsSinglePagePDF:(id)f completionHandler:(id)handler;
- (void)finalizeSignature:(id)signature;
- (void)getCaretPosition:(id)position;
- (void)htmlStringUsingAttachmentInfoByIdentifier:(id)identifier completionHandler:(id)handler;
- (void)htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature:(BOOL)signature attachmentInfoByIdentifier:(id)identifier completion:(id)completion;
- (void)initializeBodyField:(id)field;
- (void)initializeGlobalObject;
- (void)insertAttachmentAsImage:(BOOL)image isSinglePagePDF:(BOOL)f contentType:(id)type completionHandler:(id)handler;
- (void)insertString:(id)string;
- (void)invalidate;
- (void)plainTextContentUsingAttachmentInfoByIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeMediaAttachment:(id)attachment completionHandler:(id)handler;
- (void)replaceFilenamePlaceholderWithAttachment:(id)attachment identifier:(id)identifier;
- (void)replaceFilenamePlaceholderWithImage:(id)image completionHandler:(id)handler;
- (void)replaceRichLinkPlaceholderImage:(id)image completionHandler:(id)handler;
- (void)setCaretPosition:(unint64_t)position;
- (void)setDirty:(BOOL)dirty completionHandler:(id)handler;
- (void)setReplacementFilenamesByContentID:(id)d;
- (void)updateSignature:(id)signature;
@end

@implementation ComposeBodyFieldBundleController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1030;
  block[3] = &unk_182B8;
  block[4] = self;
  if (qword_1E168 != -1)
  {
    dispatch_once(&qword_1E168, block);
  }

  v2 = qword_1E160;

  return v2;
}

- (ComposeBodyFieldBundleController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v38.receiver = self;
  v38.super_class = ComposeBodyFieldBundleController;
  v8 = [(ComposeBodyFieldBundleController *)&v38 initWithPlugIn:inCopy contextController:controllerCopy];
  if (v8)
  {
    [controllerCopy _setEditingDelegate:v8];
    [controllerCopy setLoadDelegate:v8];
    _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
    v9 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFComposeBodyFieldController];
    bodyFieldInterface = v8->_bodyFieldInterface;
    v8->_bodyFieldInterface = v9;

    v11 = v8->_bodyFieldInterface;
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v11 setClasses:v13 forSelector:"setReplacementFilenamesByContentID:" argumentIndex:0 ofReply:0];

    v14 = v8->_bodyFieldInterface;
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v15, v16, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v14 setClasses:v17 forSelector:"htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature:attachmentInfoByIdentifier:completion:" argumentIndex:1 ofReply:0];

    v18 = v8->_bodyFieldInterface;
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [NSSet setWithObjects:v19, v20, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v18 setClasses:v21 forSelector:"plainTextContentUsingAttachmentInfoByIdentifier:completionHandler:" argumentIndex:0 ofReply:0];

    v22 = v8->_bodyFieldInterface;
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v23, v24, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v22 setClasses:v25 forSelector:"addMarkupString:quote:emptyFirst:prepended:composeType:attachmentInfoByURL:" argumentIndex:5 ofReply:0];

    v26 = v8->_bodyFieldInterface;
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [NSSet setWithObjects:v27, v28, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v26 setClasses:v29 forSelector:"appendOrReplace:withMarkupString:quote:composeType:attachmentInfoByURL:completionHandler:" argumentIndex:4 ofReply:0];

    v30 = v8->_bodyFieldInterface;
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
    [(_WKRemoteObjectInterface *)v30 setClasses:v33 forSelector:"htmlStringUsingAttachmentInfoByIdentifier:completionHandler:" argumentIndex:0 ofReply:0];

    [_remoteObjectRegistry registerExportedObject:v8 interface:v8->_bodyFieldInterface];
    v34 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFMailSignatureController];
    signatureControllerInterface = v8->_signatureControllerInterface;
    v8->_signatureControllerInterface = v34;

    [_remoteObjectRegistry registerExportedObject:v8 interface:v8->_signatureControllerInterface];
  }

  return v8;
}

- (void)invalidate
{
  controller = [(ComposeBodyFieldBundleController *)self controller];
  [controller _setEditingDelegate:0];
  [controller setLoadDelegate:0];
  _remoteObjectRegistry = [controller _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_bodyFieldInterface];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_signatureControllerInterface];
  jsSignatureController = self->_jsSignatureController;
  self->_jsSignatureController = 0;

  v6.receiver = self;
  v6.super_class = ComposeBodyFieldBundleController;
  [(ComposeBodyFieldBundleController *)&v6 invalidate];
}

- (void)initializeGlobalObject
{
  v28.receiver = self;
  v28.super_class = ComposeBodyFieldBundleController;
  [(ComposeBodyFieldBundleController *)&v28 initializeGlobalObject];
  jsContext = [(ComposeBodyFieldBundleController *)self jsContext];
  [jsContext setObject:objc_opt_class() forKeyedSubscript:@"MFMessageBodyParser"];
  [jsContext setObject:objc_opt_class() forKeyedSubscript:@"MessageBodyDOMParser"];
  [jsContext setObject:objc_opt_class() forKeyedSubscript:@"MessageBodyDOMQuoteSubparser"];
  v4 = 0;
  v33[0] = "BodyField.js";
  v33[1] = aCopyrightCTime;
  v33[2] = qword_1E100;
  v33[3] = "Constants.js";
  v33[4] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const MFAttachmentAttributeContentIDKey=id,MFAttributeOriginalWidth=X-APPLE-ORIGINAL-WIDTH,MFAttributeOriginalHeight=X-APPLE-ORIGINAL-HEIGHT,MFMailSignatureAttribute=AppleMailSignature,kMFComposeFileAttachmentClass=Apple-mail-fileattach,kMFComposeImageAttachmentClass=Apple-mail-imageattach,kMFComposeSinglePagePDFClass=Apple-mail-pdf;";
  v33[5] = qword_1E108;
  v33[6] = "ElementExtras.js";
  v33[7] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;Element.prototype.mf_stripCSSStyle=function(){for (let t of this.querySelectorAll(style[type='text/css']))t.parentNode.removeChild(t)},Element.prototype.mf_setDirAttributeToComputedValue=function(){this.setAttribute(dir,auto);let t=getComputedStyle(this).direction;ltr===t||rtl===t?this.setAttribute(dir,t):this.removeAttribute(dir)};";
  v33[8] = qword_1E110;
  v33[9] = "HTMLBodyElementExtras.js";
  v33[10] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLBodyElement.prototype.recursivelyRemoveMailAttributes=function(){this.removeAttribute(aria-label),this.removeAttribute(role),Object.getPrototypeOf(HTMLBodyElement).prototype.recursivelyRemoveMailAttributes.call(this)};";
  v33[11] = qword_1E118;
  v33[12] = "HTMLDocumentExtras.js";
  v33[13] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;";
  v33[14] = qword_1E120;
  v33[15] = "HTMLElementExtras.js";
  v33[16] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const _MFIsComposeAttachmentClassName=function(t){return t===kMFComposeImageAttachmentClass||t===kMFComposeFileAttachmentClass||t==kMFComposeSinglePagePDFClass};HTMLElement.prototype.recursivelyRemoveMailAttributes=function(){if (_MFIsComposeAttachmentClassName(this.getAttribute(CLASS))&&this.removeAttribute(CLASS),this.classList.contains(kMFComposeImageAttachmentClass)&&this.classList.remove(kMFComposeImageAttachmentClass),Object.getPrototypeOf(HTMLElement).prototype.recursivelyRemoveMailAttributes.call(this),MFHtmlTemporaryPresentationElement===this.getAttribute(x-apple-mail)&&null!=this.parentElement){let t=this.firstChild;for (;t;){let e=t.nextSibling;this.parentElement.insertBefore(t,this),t=e}this.parentElement.removeChild(this)}};";
  v33[17] = qword_1E128;
  v33[18] = "HTMLImageElementExtras.js";
  v33[19] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLImageElement.prototype.mf_unconstrainImageSize=function(){if (this.hasAttribute(MFAttributeOriginalWidth)){let t=this.getAttribute(MFAttributeOriginalWidth);===t?(this.removeAttribute(WIDTH),this.style.removeProperty(width),this.style.removeProperty(max-width)):this.width=t}if (this.hasAttribute(MFAttributeOriginalHeight)){let t=this.getAttribute(MFAttributeOriginalHeight);===t?(this.removeAttribute(HEIGHT),this.style.removeProperty(height),this.style.removeProperty(max-height)):this.height=t}this.removeAttribute(MFAttributeOriginalWidth),this.removeAttribute(MFAttributeOriginalHeight)},HTMLImageElement.prototype.recursivelyRemoveMailAttributes=function(){_MFIsComposeAttachmentClassName(this.getAttribute(CLASS))&&this.mf_unconstrainImageSize(),Object.getPrototypeOf(HTMLImageElement).prototype.recursivelyRemoveMailAttributes.call(this)};";
  v33[20] = qword_1E130;
  v33[21] = "MessageBodyDOMParser.js";
  v33[22] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;MessageBodyDOMParser.prototype.enqueueParagraphNode=function(e,t){this.enqueueParagraphJSNodeWithTagName(e,t)},MessageBodyDOMParser.prototype._consumeAccumulatedNodes=function(e){for (let t of e)this.enqueueParagraphNode(t,t.tagName);this.flushParagraphNodes()},MessageBodyDOMParser.prototype.parse=function(){let e=this._document.body,t=[],s=[],n=e,o=0,a=o;for (this.willBeginParsing();n&&this.shouldProceedParsing();){let r=null,i=o;if (n.hasChildNodes())r=n.firstChild,i++,s=[],t.push(s);else if (s.push(n),!(r=n.nextSibling)){let o=n;for (;!(r=o.nextSibling)&&(o=o.parentNode)&&o!==e;){let e=--i>=a;if (!e){for (let e of t)this._consumeAccumulatedNodes(e),e.length=0;a=-1}t.pop(),s=t[t.length-1],e&&s.push(o)}}if (n=r,o=i,n instanceof Element){let e=n.tagName;if (this.isLandmarkTagName(e)){a=o;for (let e of t)this._consumeAccumulatedNodes(e),e.length=0}}}for (let e of t)this._consumeAccumulatedNodes(e);return this.didFinishParsing(),!0},MessageBodyDOMParser.prototype.copyConsumableNodesAndAppendInnerTextToStringAccumulator=function(e,t){for (let s of e.jsNodes()){let e=null,n=null;if (s instanceof Element){let t=s;n=t.mf_isAttachment()?\\xa0:t.innerText,e=t.tagName}else s instanceof Text&&(n=s.data);if (MFMessageBodyParser.isLinebreakImpliedBeforeTagName(e)&&t.appendNewline(),n&&t.appendRange(0,n.length,n),MFMessageBodyParser.isLinebreakImpliedAfterTagName(e)&&t.appendNewline(),t.isFull())break}return null},MessageBodyDOMParser.prototype.rangeForElement=function(e){let t=this._document.createRange(),s=e.jsNodes();return t.setStartBefore(s[0]),t.setEndAfter(s[s.length-1]),t},MessageBodyDOMParser.prototype.extendRangeToElement=function(e,t){let s=t.jsNodes();e.setEndAfter(s[s.length-1])},MessageBodyDOMParser.prototype.rangeFromElementToElement=function(e,t){let s=this._document.createRange();s.setStartBefore(e.jsNodes()[0]);let n=t.jsNodes();return s.setEndAfter(n[n.length-1]),s};";
  v33[23] = qword_1E138;
  v33[24] = "MessageBodyDOMQuoteSubparser.js";
  v33[25] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;MessageBodyDOMQuoteSubparser.prototype.AttributeEmpty=1,MessageBodyDOMQuoteSubparser.prototype.AttributeWhitespace=4,MessageBodyDOMQuoteSubparser.prototype.AttributeAttribution=8,MessageBodyDOMQuoteSubparser.prototype.AttributeAttributionPrefix=128,MessageBodyDOMQuoteSubparser.prototype.doesRangeContainAnyElementWithTagName=function(t,e){let n=!1,i=t.commonAncestorContainer;if (i instanceof Element){let s=i.getElementsByTagName(e),r=s.length;for (let e=0;e<r;e++)if (t.intersectsNode(s.item(e))){n=!0;break}}return n},MessageBodyDOMQuoteSubparser.prototype._enumerateSurroundableRangesInRange=function(t,e){let n=t.startContainer,i=t.endContainer;if (n===i)e(t);else{let s=t.commonAncestorContainer,r=t.cloneRange(),o=n.mf_childNodeAtIndex(t.startOffset),a=!0;for (;n!==s;)a?r.setStartBefore(o):r.setStartAfter(o),r.setEndAfter(o.mf_lastSibling()),e(r),n=(o=n).parentNode,a=!1;let d=i.mf_childNodeAtIndex(t.endOffset-1),l=!0;for (;i!==s;)l?r.setEndAfter(d):r.setEndBefore(d),r.setStartBefore(d.mf_firstSibling()),e(r),i=(d=i).parentNode,l=!1;a?r.setStartBefore(o):r.setStartAfter(o),l?r.setEndAfter(d):r.setEndBefore(d),e(r)}},MessageBodyDOMQuoteSubparser.prototype.messageBodyParserFoundMessageBodyElement=function(t,e){if (this.foundDedentedAttributionRangeHandler){const n=2;if (this._unindentedSiblingNodes||(this._unindentedSiblingNodes=[]),this._lastUnindentedAttributionHint&&e.quoteLevel()===this._lastUnindentedElement.quoteLevel()+1&&(this._lastUnindentedAttributionHint.setJSNodes(this._lastUnindentedAttributionHint.jsNodes().concat(this._unindentedSiblingNodes)),this._lastUnindentedAttributionHint.valueForAttributes(this.AttributeAttribution))){let e=t.rangeFromElementToElement(this._lastUnindentedAttributionHint,this._lastUnindentedElement);this._enumerateSurroundableRangesInRange(e,t=>{this.foundDedentedAttributionRangeHandler(t)}),this._lastUnindentedAttributionHint&&this._lastUnindentedAttributionHint.releaseExternally(),this._lastUnindentedAttributionHint=undefined,this._unindentedSiblingGap=0,this._unindentedSiblingNodes.length=0}if (e.valueForAttributes(this.AttributeAttributionPrefix)){this._lastUnindentedAttributionHint&&this._lastUnindentedAttributionHint.releaseExternally(),this._lastUnindentedAttributionHint=e.retainExternally();for (let t of e.jsNodes())this._unindentedSiblingNodes.push(t)}else if (this._lastUnindentedAttributionHint)if (this._unindentedSiblingGap>n)this._lastUnindentedAttributionHint&&this._lastUnindentedAttributionHint.releaseExternally(),this._lastUnindentedAttributionHint=undefined,this._unindentedSiblingGap=0,this._unindentedSiblingNodes.length=0;else{for (let t of e.jsNodes())this._unindentedSiblingNodes.push(t);this._unindentedSiblingGap++}this._lastUnindentedElement&&this._lastUnindentedElement.releaseExternally(),this._lastUnindentedElement=e.retainExternally()}if (this.foundTrailingEmptyQuoteRangeHandler){if (this._trailingEmptyQuoteRange){let n=!1;e.quoteLevel()<this._trailingEmptyQuoteLevel?this.doesRangeContainAnyElementWithTagName(this._trailingEmptyQuoteRange,img)||this._enumerateSurroundableRangesInRange(this._trailingEmptyQuoteRange,t=>{this.foundTrailingEmptyQuoteRangeHandler(t)}):e.quoteLevel()===this._trailingEmptyQuoteLevel&&0!==e.valueForAttributes(this.AttributeEmpty|this.AttributeWhitespace)&&(n=!0),n?t.extendRangeToElement(this._trailingEmptyQuoteRange,e):this._trailingEmptyQuoteRange=null}!this._trailingEmptyQuoteRange&&e.quoteLevel()>0&&0!==e.valueForAttributes(this.AttributeEmpty|this.AttributeWhitespace)&&(this._trailingEmptyQuoteRange=t.rangeForElement(e),this._trailingEmptyQuoteLevel=e.quoteLevel())}};";
  v33[26] = qword_1E140;
  v33[27] = "NodeExtras.js";
  v33[28] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;Node.prototype.mf_isAttachment=function(){let t=!1;if (this instanceof Element){let e=this;wrapper===e.getAttribute(x-apple-mail)?t=!0:IS_PAD()&&ATTACHMENT===e.tagName&&(t=!0)}return t},Node.prototype.mf_childNodeAtIndex=function(t){let e=this.firstChild;for (;e&&t>0;)e=e.nextSibling,t--;return e},Node.prototype.mf_firstSibling=function(){let t=this,e=null;for (;e=t.previousSibling;)t=e;return t},Node.prototype.mf_lastSibling=function(){let t=this,e=null;for (;e=t.nextSibling;)t=e;return t},Node.prototype.recursivelyRemoveMailAttributes=function(){let t=this.firstChild;for (;t;){let e=t.nextSibling;t.recursivelyRemoveMailAttributes(),t=e}};";
  v33[29] = qword_1E148;
  v33[30] = "RangeExtras.js";
  v33[31] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;";
  v33[32] = qword_1E150;
  v33[33] = "SignatureController.js";
  v33[34] = aCopyrightCTime_10;
  v33[35] = qword_1E158;
  do
  {
    v5 = [[NSString alloc] initWithBytes:v33[v4 + 1] length:v33[v4 + 2] encoding:4];
    v6 = [NSString stringWithUTF8String:v33[v4]];
    v7 = [NSURL URLWithString:v6];
    v8 = [jsContext evaluateScript:v5 withSourceURL:v7];

    v4 += 3;
  }

  while (v4 != 36);
  v9 = [jsContext objectForKeyedSubscript:@"BodyFieldIOS"];
  v10 = [v9 constructWithArguments:&__NSArray0__struct];

  [(ComposeBodyFieldBundleController *)self initializeBodyField:v10];
  v11 = [jsContext objectForKeyedSubscript:@"SignatureController"];
  v12 = [v11 constructWithArguments:&__NSArray0__struct];
  jsSignatureController = self->_jsSignatureController;
  self->_jsSignatureController = v12;

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1D10;
  v27[3] = &unk_182E0;
  v27[4] = self;
  v14 = objc_retainBlock(v27);
  [jsContext setObject:v14 forKeyedSubscript:@"IS_PAD"];

  [jsContext setObject:&stru_18320 forKeyedSubscript:@"MFCreateURLForContentID"];
  globalObject = [jsContext globalObject];
  v32[0] = &__kCFBooleanTrue;
  v31[0] = JSPropertyDescriptorEnumerableKey;
  v31[1] = JSPropertyDescriptorGetKey;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1D88;
  v26[3] = &unk_18348;
  v26[4] = self;
  v16 = objc_retainBlock(v26);
  v32[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  [globalObject defineProperty:@"defaultComposeFontPixelSize" descriptor:v17];

  globalObject2 = [jsContext globalObject];
  v29[1] = JSPropertyDescriptorGetKey;
  v30[0] = &__kCFBooleanTrue;
  v29[0] = JSPropertyDescriptorEnumerableKey;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1DDC;
  v25[3] = &unk_18370;
  v25[4] = self;
  v19 = objc_retainBlock(v25);
  v30[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  [globalObject2 defineProperty:@"defaultComposeFontFamily" descriptor:v20];

  [jsContext setObject:&stru_183B0 forKeyedSubscript:@"charsetForString"];
  v21 = [jsContext objectForKeyedSubscript:@"Range"];
  v22 = [v21 objectForKeyedSubscript:@"prototype"];

  [v22 setObject:&stru_183F0 forKeyedSubscript:@"linkify"];
  v23 = [jsContext objectForKeyedSubscript:@"String"];
  v24 = [v23 objectForKeyedSubscript:@"prototype"];

  [v24 setObject:&stru_18430 forKeyedSubscript:@"mf_isAttribution"];
  [v24 setObject:&stru_18450 forKeyedSubscript:@"mf_isForwardSeparator"];
}

- (void)initializeBodyField:(id)field
{
  fieldCopy = field;
  v28.receiver = self;
  v28.super_class = ComposeBodyFieldBundleController;
  [(ComposeBodyFieldBundleController *)&v28 initializeBodyField:fieldCopy];
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2630;
  v25[3] = &unk_18478;
  objc_copyWeak(&v26, &location);
  v5 = objc_retainBlock(v25);
  [fieldCopy setObject:v5 forKeyedSubscript:@"_selectedAttachmentIdentifiersDidChange"];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_26F4;
  v23[3] = &unk_184A0;
  objc_copyWeak(&v24, &location);
  v6 = objc_retainBlock(v23);
  [fieldCopy setObject:v6 forKeyedSubscript:@"_attachmentWasTapped"];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_278C;
  v21[3] = &unk_184C8;
  objc_copyWeak(&v22, &location);
  v7 = objc_retainBlock(v21);
  [fieldCopy setObject:v7 forKeyedSubscript:@"_selectionContainsLinkStateDidChange"];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_280C;
  v19[3] = &unk_184C8;
  objc_copyWeak(&v20, &location);
  v8 = objc_retainBlock(v19);
  [fieldCopy setObject:v8 forKeyedSubscript:@"_selectedLinkTextDidChange"];

  v30[0] = JSPropertyDescriptorEnumerableKey;
  v30[1] = JSPropertyDescriptorConfigurableKey;
  v31[0] = &__kCFBooleanTrue;
  v31[1] = &__kCFBooleanTrue;
  v30[2] = JSPropertyDescriptorGetKey;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_2884;
  v18[3] = &unk_184F0;
  v18[4] = self;
  v9 = objc_retainBlock(v18);
  v31[2] = v9;
  v30[3] = JSPropertyDescriptorSetKey;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2914;
  v17[3] = &unk_18518;
  v17[4] = self;
  v10 = objc_retainBlock(v17);
  v31[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
  [fieldCopy defineProperty:@"_dirty" descriptor:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ACCESSIBILITY_BODY_LABEL" value:&stru_189B0 table:@"Localizable"];
  [fieldCopy setObject:v13 forKeyedSubscript:@"_localizedAccessibilityLabel"];

  plugIn = [(ComposeBodyFieldBundleController *)self plugIn];
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [plugIn blockRemoteContent] ^ 1);
  v29 = v15;
  v16 = [NSArray arrayWithObjects:&v29 count:1];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"remoteContentEnabled" withArguments:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (MFComposeBodyFieldObserver)observerProxy
{
  observerProxy = self->_observerProxy;
  if (!observerProxy)
  {
    controller = [(ComposeBodyFieldBundleController *)self controller];
    _remoteObjectRegistry = [controller _remoteObjectRegistry];
    v6 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFComposeBodyFieldObserver];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_observerProxy;
    self->_observerProxy = v7;

    observerProxy = self->_observerProxy;
  }

  return observerProxy;
}

- (void)addMarkupString:(id)string quote:(BOOL)quote emptyFirst:(BOOL)first prepended:(BOOL)prepended composeType:(int64_t)type attachmentInfoByURL:(id)l
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2FE4;
  v15[3] = &unk_18540;
  selfCopy = self;
  stringCopy = string;
  quoteCopy = quote;
  firstCopy = first;
  prependedCopy = prepended;
  lCopy = l;
  typeCopy = type;
  v13 = lCopy;
  v14 = stringCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v15];
}

- (void)appendOrReplace:(id)replace withMarkupString:(id)string quote:(BOOL)quote composeType:(int64_t)type attachmentInfoByURL:(id)l completionHandler:(id)handler
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_317C;
  v17[3] = &unk_18568;
  selfCopy = self;
  replaceCopy = replace;
  quoteCopy = quote;
  stringCopy = string;
  lCopy = l;
  handlerCopy = handler;
  typeCopy = type;
  v13 = handlerCopy;
  v14 = lCopy;
  v15 = stringCopy;
  v16 = replaceCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v17];
}

- (void)setReplacementFilenamesByContentID:(id)d
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_33F8;
  v4[3] = &unk_18590;
  selfCopy = self;
  dCopy = d;
  v3 = dCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v4];
}

- (void)containsRichText:(id)text
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3524;
  v4[3] = &unk_185B8;
  selfCopy = self;
  textCopy = text;
  v3 = textCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v4];
}

- (void)plainTextContentUsingAttachmentInfoByIdentifier:(id)identifier completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_36AC;
  v8[3] = &unk_185E0;
  identifierCopy = identifier;
  handlerCopy = handler;
  v8[4] = self;
  v6 = identifierCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)htmlStringUsingAttachmentInfoByIdentifier:(id)identifier completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_38B8;
  v8[3] = &unk_185E0;
  identifierCopy = identifier;
  handlerCopy = handler;
  v8[4] = self;
  v6 = identifierCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)htmlStringsAttachmentURLsAndPlainTextAlternativeRemovingSignature:(BOOL)signature attachmentInfoByIdentifier:(id)identifier completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3AC8;
  v8[3] = &unk_18608;
  signatureCopy = signature;
  selfCopy = self;
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = identifierCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v8];
}

- (void)setCaretPosition:(unint64_t)position
{
  v4 = [NSNumber numberWithUnsignedInteger:position];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"setCaretPosition" withArguments:v5];
}

- (void)getCaretPosition:(id)position
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_40D0;
  v4[3] = &unk_185B8;
  selfCopy = self;
  positionCopy = position;
  v3 = positionCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v4];
}

- (void)insertAttachmentAsImage:(BOOL)image isSinglePagePDF:(BOOL)f contentType:(id)type completionHandler:(id)handler
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4290;
  v12[3] = &unk_18630;
  typeCopy = type;
  handlerCopy = handler;
  imageCopy = image;
  fCopy = f;
  v12[4] = self;
  v10 = typeCopy;
  v11 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v12];
}

- (void)countDuplicatedAttachments:(id)attachments completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_44F4;
  v8[3] = &unk_185E0;
  attachmentsCopy = attachments;
  handlerCopy = handler;
  v8[4] = self;
  v6 = attachmentsCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)replaceFilenamePlaceholderWithImage:(id)image completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4700;
  v8[3] = &unk_185E0;
  imageCopy = image;
  handlerCopy = handler;
  v8[4] = self;
  v6 = imageCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)replaceFilenamePlaceholderWithAttachment:(id)attachment identifier:(id)identifier
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  v9[0] = attachmentCopy;
  v9[1] = identifierCopy;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"replaceFilenamePlaceholderWithAttachment" withArguments:v8];
}

- (void)replaceRichLinkPlaceholderImage:(id)image completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_49E4;
  v8[3] = &unk_185E0;
  imageCopy = image;
  handlerCopy = handler;
  v8[4] = self;
  v6 = imageCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)removeMediaAttachment:(id)attachment completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4BEC;
  v7[3] = &unk_18658;
  selfCopy = self;
  attachmentCopy = attachment;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = attachmentCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v7];
}

- (void)displayAttachmentWithIdentifierAsSinglePagePDF:(id)f completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4DBC;
  v8[3] = &unk_185E0;
  fCopy = f;
  handlerCopy = handler;
  v8[4] = self;
  v6 = fCopy;
  v7 = handlerCopy;
  [(ComposeBodyFieldBundleController *)self performOnPage:v8];
}

- (void)setDirty:(BOOL)dirty completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4FA8;
  v5[3] = &unk_18680;
  dirtyCopy = dirty;
  selfCopy = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v5];
}

- (void)addLink:(id)link
{
  linkCopy = link;
  v6 = linkCopy;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"updateLink" withArguments:v5];
}

- (void)addTextDescriptionToLink:(id)link
{
  linkCopy = link;
  v6 = linkCopy;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"addTextDescriptionToLink" withArguments:v5];
}

- (void)insertString:(id)string
{
  stringCopy = string;
  v6 = stringCopy;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(ComposeBodyFieldBundleController *)self performBodyFieldMethodOnPage:@"insertString" withArguments:v5];
}

- (void)_performSignatureControllerMethodOnPage:(id)page withArguments:(id)arguments
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5418;
  v7[3] = &unk_186A8;
  selfCopy = self;
  pageCopy = page;
  argumentsCopy = arguments;
  v5 = argumentsCopy;
  v6 = pageCopy;
  [(ComposeBodyFieldBundleController *)selfCopy performOnPage:v7];
}

- (void)updateSignature:(id)signature
{
  signatureCopy = signature;
  v6 = signatureCopy;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(ComposeBodyFieldBundleController *)self _performSignatureControllerMethodOnPage:@"updateSignature" withArguments:v5];
}

- (void)finalizeSignature:(id)signature
{
  signatureCopy = signature;
  [(ComposeBodyFieldBundleController *)self _performSignatureControllerMethodOnPage:@"finalizeSignature" withArguments:&__NSArray0__struct];
  signatureCopy[2]();
}

- (BOOL)_webProcessPlugInBrowserContextController:(id)controller shouldChangeSelectedRange:(id)range toRange:(id)toRange affinity:(int64_t)affinity stillSelecting:(BOOL)selecting
{
  toRangeCopy = toRange;
  _copyBundleRangeHandleRef = [toRangeCopy _copyBundleRangeHandleRef];
  frame = [_copyBundleRangeHandleRef frame];
  v11 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v12 = [frame jsRangeForRangeHandle:_copyBundleRangeHandleRef inWorld:v11];

  if (v12)
  {
    jsBodyField = [(ComposeBodyFieldBundleController *)self jsBodyField];
    v19[0] = v12;
    v14 = [NSNumber numberWithBool:self->_shouldForceSelectionFromSecondToFirstLine];
    v19[1] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:2];
    v16 = [jsBodyField invokeMethod:@"shouldChangeSelectedRange" withArguments:v15];

    self->_shouldForceSelectionFromSecondToFirstLine = 0;
    toBool = [v16 toBool];
  }

  else
  {
    toBool = 0;
  }

  return toBool;
}

- (void)_webProcessPlugInBrowserContextControllerDidChangeByEditing:(id)editing
{
  [(ComposeBodyFieldBundleController *)self _setDirty:1];
  observerProxy = [(ComposeBodyFieldBundleController *)self observerProxy];
  [observerProxy composeBodyFieldDidChange];
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v9 = [requestCopy URL];
  scheme = [v9 scheme];
  lowercaseString = [scheme lowercaseString];

  v26[0] = MSContentIDURLScheme;
  v26[1] = MSBlobURLScheme;
  v26[2] = MSDataURLScheme;
  v26[3] = MSFileURLScheme;
  v12 = [NSArray arrayWithObjects:v26 count:4];
  v13 = [v12 containsObject:lowercaseString];

  if (v13)
  {
    v14 = requestCopy;
    goto LABEL_13;
  }

  plugIn = [(ComposeBodyFieldBundleController *)self plugIn];
  if ([plugIn blockRemoteContent])
  {

    remoteContentProxySchemePrefix = +[ComposeBodyFieldBundleController log];
    if (os_log_type_enabled(remoteContentProxySchemePrefix, OS_LOG_TYPE_DEBUG))
    {
      v17 = [0 URL];
      absoluteString = [v17 absoluteString];
      sub_6DD4(absoluteString, v25, remoteContentProxySchemePrefix, v17);
    }

    v19 = 0;
  }

  else
  {
    if (![v9 ef_isHTTPOrHTTPSURL] || (objc_msgSend(plugIn, "remoteContentProxySchemePrefix"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
    {
      v19 = requestCopy;
      goto LABEL_12;
    }

    remoteContentProxySchemePrefix = [plugIn remoteContentProxySchemePrefix];
    v19 = [requestCopy mutableCopy];
    v22 = [remoteContentProxySchemePrefix stringByAppendingString:lowercaseString];
    v23 = [v9 ef_urlByReplacingSchemeWithScheme:v22];
    [v19 setURL:v23];
  }

LABEL_12:
  v14 = v19;

LABEL_13:

  return v14;
}

@end